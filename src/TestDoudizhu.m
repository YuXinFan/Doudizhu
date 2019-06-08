classdef TestDoudizhu < matlab.uitest.TestCase
    properties
        StartApp
        ClientGUIApp1
        ClientGUIApp2
        ClientGUIApp3
        GameWindowGUI1
        GameWindowGUI2
        GameWindowGUI3
    end
    
    methods (TestMethodSetup)
        function launchApp(testCase)
            testCase.StartApp = Start;
            testCase.addTeardown(@delete,testCase.StartApp);
        end
    end
    
    methods (Test)
        
       
        function test_doudizhu_game1(testCase)
            SUIT= ["3s","3h","3d","4s","4h","5s","6s","7s","8s","10s","10h","Ks",...
                "Kh","Kd","As","Ah","Ad","3c","5h","5d","5c","6h","6d","7h",...
                "7d","8h","8d","9s","10s","Js","Qs","Kc","Ac","2s","4d","4c",...
                "6c","7c","8c","9h","9d","9c","10c","Jh","Jd","Jc","Qh","Qd",...
                "Qc","2h","2d","2c","BJ","CJ"];
            testCase.StartApp.Server.controller_.SUIT = SUIT;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp2 = testCase.StartApp.ClientGUI;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp3 = testCase.StartApp.ClientGUI;
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);
            testCase.addTeardown(@delete,testCase.ClientGUIApp2);
            testCase.addTeardown(@delete,testCase.ClientGUIApp3);
            
            testCase.type(testCase.ClientGUIApp1.NameInput, 'player1');
            testCase.type(testCase.ClientGUIApp1.SecretInput, 'player1');
            testCase.type(testCase.ClientGUIApp2.NameInput, 'player2');
            testCase.type(testCase.ClientGUIApp2.SecretInput, 'player2');
            testCase.type(testCase.ClientGUIApp3.NameInput, 'player3');
            testCase.type(testCase.ClientGUIApp3.SecretInput, 'player3');
            testCase.press(testCase.ClientGUIApp1.LoginButton);
            testCase.press(testCase.ClientGUIApp2.LoginButton);
            testCase.press(testCase.ClientGUIApp3.LoginButton);
            testCase.GameWindowGUI1 = testCase.ClientGUIApp1.game_window;
            testCase.GameWindowGUI2 = testCase.ClientGUIApp2.game_window;
            testCase.GameWindowGUI3 = testCase.ClientGUIApp3.game_window;
            testCase.addTeardown(@delete,testCase.GameWindowGUI1);
            testCase.addTeardown(@delete,testCase.GameWindowGUI2);
            testCase.addTeardown(@delete,testCase.GameWindowGUI3);
          
            testCase.press(testCase.GameWindowGUI1.This_Ready);
            testCase.press(testCase.GameWindowGUI2.This_Ready);
            testCase.press(testCase.GameWindowGUI3.This_Ready);
           
            testCase.press(testCase.GameWindowGUI1.NoBidButton);
            testCase.press(testCase.GameWindowGUI2.BidButton);
            testCase.press(testCase.GameWindowGUI3.NoBidButton);
            
            pause(1);
            %round 1
            testCase.press(testCase.GameWindowGUI2.GameWindow,[520,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[540,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[560,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[580,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            
            testCase.press(testCase.GameWindowGUI3.GameWindow,[380,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[400,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[420,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[480,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.Pass);
            testCase.press(testCase.GameWindowGUI2.Pass);
            
            pause(1);
            %round 2
            testCase.press(testCase.GameWindowGUI3.GameWindow,[240,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[260,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[280,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[300,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[320,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[340,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[380,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[400,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 1,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 2,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 4,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 5,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass);
            testCase.press(testCase.GameWindowGUI3.Pass);
            
            pause(1);
            %round 3
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 1,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 2,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 4,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 4,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 5,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.Pass);
            testCase.press(testCase.GameWindowGUI1.Pass);
            
            pause(1);
            %round 4
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 5,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 9,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 10,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.Pass);
            testCase.press(testCase.GameWindowGUI1.Pass);
            
            pause(1);
            %round 5
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 4,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.Pass);
            testCase.press(testCase.GameWindowGUI2.Pass);
            
            pause(1);
            %round 6
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 2,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.Pass);            
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 2,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.Pass);
            testCase.press(testCase.GameWindowGUI1.Pass);
            
            pause(1);
            %round 7         
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 1,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            
            %player2 win
            testCase.verifyEqual(0,length(testCase.StartApp.Server.controller_.player_cards{2}));
        end
        
        function test_doudizhu_game2(testCase)
            SUIT= ["3s","3h","4s","4h","7s","8s","10s","Js","Qs","Qh","Ks","Kh",...
                "Kd","As","Ah","Ad","CJ","3d","3c","5s","5h","5d","5c","7h",...
                "7d","8h","8d","9s","9h","10h","Jh","Qd","Ac","2s","4d","4c",...
                "6s","6h","6d","6c","7c","8c","9d","9c","10d","10c","Jd","Jc",...
                "Qc","2h","2d","2c","BJ","Kc"];
            testCase.StartApp.Server.controller_.SUIT = SUIT;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp2 = testCase.StartApp.ClientGUI;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp3 = testCase.StartApp.ClientGUI;
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);
            testCase.addTeardown(@delete,testCase.ClientGUIApp2);
            testCase.addTeardown(@delete,testCase.ClientGUIApp3);
            
            testCase.type(testCase.ClientGUIApp1.NameInput, 'player1');
            testCase.type(testCase.ClientGUIApp1.SecretInput, 'player1');
            testCase.type(testCase.ClientGUIApp2.NameInput, 'player2');
            testCase.type(testCase.ClientGUIApp2.SecretInput, 'player2');
            testCase.type(testCase.ClientGUIApp3.NameInput, 'player3');
            testCase.type(testCase.ClientGUIApp3.SecretInput, 'player3');
            testCase.press(testCase.ClientGUIApp1.LoginButton);
            testCase.press(testCase.ClientGUIApp2.LoginButton);
            testCase.press(testCase.ClientGUIApp3.LoginButton);
            testCase.GameWindowGUI1 = testCase.ClientGUIApp1.game_window;
            testCase.GameWindowGUI2 = testCase.ClientGUIApp2.game_window;
            testCase.GameWindowGUI3 = testCase.ClientGUIApp3.game_window;
            testCase.addTeardown(@delete,testCase.GameWindowGUI1);
            testCase.addTeardown(@delete,testCase.GameWindowGUI2);
            testCase.addTeardown(@delete,testCase.GameWindowGUI3);
          
            testCase.press(testCase.GameWindowGUI1.This_Ready);
            testCase.press(testCase.GameWindowGUI2.This_Ready);
            testCase.press(testCase.GameWindowGUI3.This_Ready);
           
            testCase.press(testCase.GameWindowGUI1.BidButton);
            testCase.press(testCase.GameWindowGUI2.NoBidButton);
            testCase.press(testCase.GameWindowGUI3.NoBidButton);
            
            pause(1);
            %round 1
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 18,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 19,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 15,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 16,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.Pass);
            testCase.press(testCase.GameWindowGUI2.Pass);
            
            pause(1);
            %round 2
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 10,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 11,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 12,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 13,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 14,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 9,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.Pass);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 11,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 12,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 13,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 14,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.Pass);
            testCase.press(testCase.GameWindowGUI1.Pass);
            
            pause(1);
            %round 3
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 5,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 9,100]);
            testCase.press(testCase.GameWindowGUI2.GameWindow,[200 + 20 * 10,100]);
            testCase.press(testCase.GameWindowGUI2.Go);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 3,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 4,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 5,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 6,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 7,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 9,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass);
            testCase.press(testCase.GameWindowGUI3.Pass);
            
            pause(1);
            %round 4
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 12,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 13,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass)
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 1,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 1,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass);
            testCase.press(testCase.GameWindowGUI3.Pass);
            
            pause(1);
            %round 5
            testCase.press(testCase.GameWindowGUI1.GameWindow,[200 + 20 * 8,100]);
            testCase.press(testCase.GameWindowGUI1.Go);
            testCase.press(testCase.GameWindowGUI2.Pass);
            testCase.press(testCase.GameWindowGUI3.GameWindow,[200 + 20 * 0,100]);
            testCase.press(testCase.GameWindowGUI3.Go);
            
            
            %player3 win
            testCase.verifyEqual(length(testCase.StartApp.Server.controller_.player_cards{3}),0);
        end
        
        function test_doudizhu_open_client_button(testCase)
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            close(testCase.ClientGUIApp1.ClientUIFigure);
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp2 = testCase.StartApp.ClientGUI;
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp3 = testCase.StartApp.ClientGUI;
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);
            testCase.addTeardown(@delete,testCase.ClientGUIApp2);
            testCase.addTeardown(@delete,testCase.ClientGUIApp3);            
        end    
        
        function test_doudizhu_close_illegal(testCase)
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            close(testCase.StartApp.DouDiZhu);
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);           
        end    
        
        function test_doudizhu_close_llegal(testCase)
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);           
        end    
        
        function test_doudizhu_login(testCase)
            testCase.press(testCase.StartApp.OpenClientButton);
            testCase.ClientGUIApp1 = testCase.StartApp.ClientGUI;
            testCase.addTeardown(@delete,testCase.ClientGUIApp1);   
            testCase.press(testCase.ClientGUIApp1.SignUpandLoginButton);
            testCase.type(testCase.ClientGUIApp1.NameInput, 'player1');
            testCase.type(testCase.ClientGUIApp1.SecretInput, 'player1');
            testCase.press(testCase.ClientGUIApp1.SignUpandLoginButton);  
            testCase.type(testCase.ClientGUIApp1.NameInput, 'player 1');
            testCase.type(testCase.ClientGUIApp1.SecretInput, 'player 1');
            testCase.type(testCase.ClientGUIApp1.NameInput, '?');
            testCase.type(testCase.ClientGUIApp1.SecretInput, '?');
            testCase.press(testCase.ClientGUIApp1.SignUpandLoginButton); 
            testCase.type(testCase.ClientGUIApp1.NameInput, num2str(randi(10000)));
            testCase.type(testCase.ClientGUIApp1.SecretInput, num2str(randi(10000)));
            testCase.press(testCase.ClientGUIApp1.SignUpandLoginButton);
            testCase.GameWindowGUI1 = testCase.ClientGUIApp1.game_window;
            testCase.addTeardown(@delete,testCase.GameWindowGUI1);
        end   
        
    end    
end    