﻿using System;
using System.Windows;
using System.Windows.Input;
using System.Net.Sockets;
using System.Net;
using System.Threading;
using ServerData;
using System.Windows.Threading;





namespace ChatRoomProject
{   
    public partial class ChatRoom : Window
    {
        public static Socket master;
        public static string name;
        public static string LastMessage;
        public static string LastMessageDoNotRepeat;
        public static string ConditionChatRoomSpecific;
        public static Boolean Connection = false;
        public ChatRoom()
        {
            InitializeComponent();

            // Affichage du nom de la chatRoom adéquate
            NomChatRoom.Text = Convert.ToString((App.Current as App).SessionChatRoom);

            // Création d'un timer qui permettra plus loin de refresh une fonction toute les 0.5 secondes
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(0.5);
            timer.Tick += dispatcherTimerReloadFunction_Tick;
            timer.Start();

        }

        // Boutton de Fermeture de l'application
        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        // Fonction affichant les messages, avec l'heure reçus, n'affiche qu'une fois le dernier message reçus
        private void dispatcherTimerReloadFunction_Tick(object sender, EventArgs e)
        {
            if (ConditionChatRoomSpecific == (App.Current as App).SessionChatRoom)
            {
                if (LastMessageDoNotRepeat != LastMessage)
                {
                    ChatScreentextBox.Text = ChatScreentextBox.Text + DateTime.Now.ToLongTimeString() + " | " + LastMessage + "\n";
                    LastMessageDoNotRepeat = LastMessage;
                }
            }
        }

        // Event permettant de déplacer (DragMove) l'application
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
                this.DragMove();
        }

        // Connection au serveur avec l'adresse ip sélectionner précédemment grace au simili de variable global SessionChatRoom
        private void Connectbutton_Click(object sender, RoutedEventArgs e)
        {
            master = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);

            // On se connecte, si la connexion ne fonctionne pas message d'erreur, l'utilisateur peut réessayer en rentrant une adresse ip valide / en activant son serveur
            if (Connection == true)
            {
                MessageBox.Show("Vous vous êtes déjà connecté à la ChatRoom, calmez vous l'ami", "Connexion", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            try
            {
                IPEndPoint ipe = new IPEndPoint(IPAddress.Parse((App.Current as App).ip), 4242);
                master.Connect(ipe);
                MessageBox.Show("Connection à la ChatRoom \""+ (App.Current as App).SessionChatRoom+"\"", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                Connection = true;

                Packet p = new Packet(PacketType.Chat, (App.Current as App).ip);
                string SessionName = (App.Current as App).Session;
                p.Gdata.Add("");
                p.Gdata.Add("Un nouveau membre a rejoint la chatroom: Bienvenue "+SessionName);
                p.Gdata.Add(Convert.ToString((App.Current as App).SessionChatRoom));
                master.Send(p.ToBytes());//send to server
            }
            catch // Si la connexion échoue, message d'erreur puis retour à notre window
            {
                MessageBox.Show("Erreur de connexion a l'host, veillez réessayer en insérant la bonne adresse ip du serveur !", "Echec", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            // Thread avec le serveur
            Thread t = new Thread(Data_IN);
            t.Start();
        }

        // "Rafraichissement" de notre page pour afficher les messages des autres utilisateurs, il faut que je trouve un event automatique qui s'active tout les X milisecondes.  
        // Envoie de notre message au serveur, modification adéquate de notre propre ChatRoom
        private void Sendbutton_Click(object sender, RoutedEventArgs e)
        { 
            string input = MessagetextBox.Text;
            
            if (Connection != true)
            {
                MessageBox.Show("Pas de connexion détecté, veillez vous connecter à l'host d'abord !", "Impossibilité d'envoyer un message", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            Packet p = new Packet(PacketType.Chat, (App.Current as App).ip);
            string SessionName = (App.Current as App).Session;
            p.Gdata.Add(SessionName);// get name
            p.Gdata.Add(input);//get input
            p.Gdata.Add(Convert.ToString((App.Current as App).SessionChatRoom));
            master.Send(p.ToBytes());//send to server
            MessagetextBox.Text = "";
        }





        // Listener des données envoyé par le serveur
        void Data_IN()
        {
            byte[] Buffer;
            int readByte;

            for (; ; )
            {
                Buffer = new byte[master.SendBufferSize];
                readByte = master.Receive(Buffer);

                if (readByte > 0)
                {
                    DataManager(new Packet(Buffer));
                }
            }

        }

        void DataManager(Packet p)
        {
            
            switch (p.packetType)
            {
                case PacketType.Registration:

                    (App.Current as App).ip = p.Gdata[0];
                    break;

                case PacketType.Chat:
                    ConditionChatRoomSpecific = (p.Gdata[2]);
                    LastMessage = (p.Gdata[0] + " : " + p.Gdata[1]);
                    break;

            }

        }






    }
    }












