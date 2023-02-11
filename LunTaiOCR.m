function varargout = LunTaiOCR(varargin)
% LunTaiOCR MATLAB code for LunTaiOCR.fig
%      LunTaiOCR, by itself, creates a new LunTaiOCR or raises the existing
%      singleton*.
%
%      H = LunTaiOCR returns the handle to a new LunTaiOCR or the handle to
%      the existing singleton*.
%
%      LunTaiOCR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LunTaiOCR.M with the given input arguments.
%
%      LunTaiOCR('Property','Value',...) creates a new LunTaiOCR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LunTaiOCR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LunTaiOCR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LunTaiOCR

% Last Modified by GUIDE v2.5 09-Feb-2023 15:18:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LunTaiOCR_OpeningFcn, ...
                   'gui_OutputFcn',  @LunTaiOCR_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before LunTaiOCR is made visible.
function LunTaiOCR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LunTaiOCR (see VARARGIN)

% Choose default command line output for LunTaiOCR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LunTaiOCR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LunTaiOCR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
% 选择图片
[name,path]=uigetfile({'*.png';'*.jpg';'*.bmp';'gif'},'载入图像');
if path
    rawImg=imread([path,name]);  %读取图片数据
    %显示图像
    xuanzhuan = rot90(rawImg);
    fanzhuan = flipud(xuanzhuan);
    axes(handles.axes1)
    imshow(fanzhuan)
    set(handles.edit1,'string',[path,name])
    %初始化
    for i=2:11       
          %eval(['set(handles.edit',num2str(i),',''string'',',num2str(0),')'])  
        jieguo = '';
        eval(['set(handles.edit',num2str(i),',''string'',',  'jieguo',')']) 
        eval(['axes(handles.axes',num2str(i+1),')'])
        plot(0,0)
        set(gca,'xtick',[],'ytick',[],'xcolor','w','ycolor','w')
    end 
     axes(handles.axes2)
     plot(0,0)
     set(gca,'xtick',[],'ytick',[],'xcolor','w','ycolor','w')
end

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%1.读取图片
imgpt =get(handles.edit1,'String'); %获取图片路径
rawImg = imread(imgpt);
%2.图片旋转与翻转
xuanzhuan = rot90(rawImg);
fanzhuan = flipud(xuanzhuan);
rotpt='rot.png';
imwrite(fanzhuan,rotpt);
%3.图片送入PPOCR模型预处理
[newpic ,~] = picyuchuli(rotpt);  %预处理
ocrid1 = 'fzzKrj6FMlCGXyeiIbEdkBq9';
ocrid2= '27E6U1XTLGtrsOCm248F8ov4NgUd5rdO';
%4.调用ocr模型
urlx = ['https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials&client_id=',ocrid1,'&client_secret=',ocrid2];
keyx = webread(urlx);
keyx2 = keyx.access_token;
%5.获取ocr模型结果
respe = ['https://aip.baidubce.com/rest/2.0/ocr/v1/accurate?access_token=' keyx2];
results = webwrite(respe,'image',newpic,'Content-Type','application/x-www-form-urlencoded', 'Accept', 'application/json');

%load('outputx.mat');

%results = outputx;
%6.处理ocr模型结果
axes(handles.axes2)
imshow(fanzhuan)
resultsnew = results.words_result;
if ~isempty(resultsnew)
    for ii=1:length(resultsnew)
        zimu = resultsnew(ii).words; %提取字符
        weizhi = resultsnew(ii).location;  %提取位置 
        yy = floor(weizhi.top)+1;
        xx = floor(weizhi.left)+1;
        legx =  floor(weizhi.width);
        heig= floor(weizhi.height);
        rectangle('Position',[xx yy legx heig],'EdgeColor','g','LineWidth',2) % 框图
        text( xx, yy-30,zimu,'Color','red','FontSize',6)
    end 
end


%7.roi区域提取
if ~isempty(resultsnew)
    for ii=1:length(resultsnew)
        zimu = resultsnew(ii).words; %提取字符
        weizhi = resultsnew(ii).location;  %提取位置 
        yy = floor(weizhi.top)+1;
        xx = floor(weizhi.left)+1;
        legx =  floor(weizhi.width);
        heig= floor(weizhi.height);
        jubutu = fanzhuan(yy:yy+heig,xx:xx+legx);
 
        try
        eval(['axes(handles.axes',num2str(ii+2),')'])
        imshow(jubutu)
        set(gca,'xtick',[],'ytick',[],'xcolor','w','ycolor','w')
        jieguo = zimu;
        eval(['set(handles.edit',num2str(ii+1),',''string'',',  'jieguo',')'])
        catch
            
        end
        
    end 
end

figure(1000)
imshow(fanzhuan)
resultsnew = results.words_result;
if ~isempty(resultsnew)
    for ii=1:length(resultsnew)
        zimu = resultsnew(ii).words; %提取字符
        weizhi = resultsnew(ii).location;  %提取位置 
        yy = floor(weizhi.top)+1;
        xx = floor(weizhi.left)+1;
        legx =  floor(weizhi.width);
        heig= floor(weizhi.height);
        rectangle('Position',[xx yy legx heig],'EdgeColor','g','LineWidth',3) % 框图
        text( xx, yy-30,zimu,'Color','red','FontSize',6)
    end 
end

mkdir('.\outImg');
[~,id2] = find(imgpt =='\');
namex= ['.\outImg\','Results',imgpt(id2(end)+1:end)];
saveas(gcf,namex)
close(figure(1000))



 

 
