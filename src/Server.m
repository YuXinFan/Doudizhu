classdef Server < handle
    %������������ݵĴ洢���ģ�
    %   �˴���ʾ��ϸ˵��
    
    properties(SetAccess = private)
        accounts_data_
        player_points_
        online_players_
        room_status_
        category_
        controller_
        CARDS
    end
    
    methods
        function self = Server()
            %���캯��
            self.accounts_data_ = [];    
            self.player_points_ = [];
            self.online_players_ = [];
            self.room_status_ = [];
            self.category_ = [];
            self.controller_ = GameController(self);
            self.CARDS = Cards();
        end
        
        function ret = cards(self)
            ret = self.CARDS;
        end
        
        function ret = controller(self)
            ret = self.controller_;
        end
        function ret = points(self, name)
           k = self.accounts_data_ == name;
           ret = self.player_points(k);
        end
       %=====================Account========================== 
        function ret = checkAccountExistance(self,name)
            %����˻�name�ǲ����Ѿ�����
            ret = true;
            is_member = ismember(self.accounts_data_, name);
            if (sum(is_member) == 0)
                ret = false;
            end  
        end
        
        function ret = addAccount(self, name)
            %�������˻�������¼���
            ret = true;
            is_exist = self.checkAccountExistance(name);
            if (~is_exist)
                self.accounts_data_ = [self.accounts_data_, name];
                %self.player_points_ = [self.player_points_, 0];
            else
                ret = false;
            end
        end
        
        function deleteAccount(self,name)
            is_member = ismember(self.accounts_data_, name);
            self.accounts_data_(is_member) = [];
            %self.player_points_(is_member) = [];
        end
        
        function updatelayerPoints(self, player, var)
            k = self.accounts_data_ == player;
            self.player_points_(k) = var;
        end
        
        function setPlayerStatus(self, name, status)
            k = find(self.accounts_data_ == name);
            if (status == 0)
                self.online_players_(k) = 0;
            else
                self.online_players_(k) = 1;
            end
        end
    end
end

