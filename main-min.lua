--https://github.com/Mokiros/roblox-FE-compatibility
if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,Mouse,mouse,UserInputService,ContextActionService = owner
local RealPlayer = Player
do print("FE Compatibility code by Mokiros")local a=RealPlayer;script.Parent=a.Character;local b=Instance.new("RemoteEvent")b.Name="UserInput_Event"local function c()local d={_fakeEvent=true,Functions={},Connect=function(self,e)table.insert(self.Functions,e)end}d.connect=d.Connect;return d end;local f={Target=nil,Hit=CFrame.new(),KeyUp=c(),KeyDown=c(),Button1Up=c(),Button1Down=c(),Button2Up=c(),Button2Down=c()}local g={InputBegan=c(),InputEnded=c()}local CAS={Actions={},BindAction=function(self,h,i,j,...)CAS.Actions[h]=i and{Name=h,Function=i,Keys={...}}or nil end}CAS.UnbindAction=CAS.BindAction;local function k(self,l,...)local d=f[l]if d and d._fakeEvent then for m,e in pairs(d.Functions)do e(...)end end end;f.TrigEvent=k;g.TrigEvent=k;b.OnServerEvent:Connect(function(n,o)if n~=a then return end;f.Target=o.Target;f.Hit=o.Hit;if not o.isMouse then local p=o.UserInputState==Enum.UserInputState.Begin;if o.UserInputType==Enum.UserInputType.MouseButton1 then return f:TrigEvent(p and"Button1Down"or"Button1Up")end;if o.UserInputType==Enum.UserInputType.MouseButton2 then return f:TrigEvent(p and"Button2Down"or"Button2Up")end;for m,d in pairs(CAS.Actions)do for m,q in pairs(d.Keys)do if q==o.KeyCode then d.Function(d.Name,o.UserInputState,o)end end end;f:TrigEvent(p and"KeyDown"or"KeyUp",o.KeyCode.Name:lower())g:TrigEvent(p and"InputBegan"or"InputEnded",o,false)end end)b.Parent=NLS([==[local a=game:GetService("Players").LocalPlayer;local b=script:WaitForChild("UserInput_Event")local c=a:GetMouse()local d=game:GetService("UserInputService")local e=function(f,g)if g then return end;b:FireServer({KeyCode=f.KeyCode,UserInputType=f.UserInputType,UserInputState=f.UserInputState,Hit=c.Hit,Target=c.Target})end;d.InputBegan:Connect(e)d.InputEnded:Connect(e)local h,i;while wait(1/30)do if h~=c.Hit or i~=c.Target then h,i=c.Hit,c.Target;b:FireServer({isMouse=true,Target=i,Hit=h})end end]==],Player.Character)local r=game;local s={__index=function(self,q)local t=rawget(self,"_RealService")if t then return typeof(t[q])=="function"and function(m,...)return t[q](t,...)end or t[q]end end,__newindex=function(self,q,u)local t=rawget(self,"_RealService")if t then t[q]=u end end}local function v(d,w)d._RealService=typeof(w)=="string"and r:GetService(w)or w;return setmetatable(d,s)end;local x={GetService=function(self,t)return rawget(self,t)or r:GetService(t)end,Players=v({LocalPlayer=v({GetMouse=function(self)return f end},Player)},"Players"),UserInputService=v(g,"UserInputService"),ContextActionService=v(CAS,"ContextActionService"),RunService=v({_btrs={},RenderStepped=r:GetService("RunService").Heartbeat,BindToRenderStep=function(self,h,m,i)self._btrs[h]=self.Heartbeat:Connect(i)end,UnbindFromRenderStep=function(self,h)self._btrs[h]:Disconnect()end},"RunService")}rawset(x.Players,"localPlayer",x.Players.LocalPlayer)x.service=x.GetService;v(x,game)game,owner=x,x.Players.LocalPlayer end