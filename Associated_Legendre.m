function varargout = Associated_Legendre(varargin)
% ASSOCIATED_LEGENDRE MATLAB code for Associated_Legendre.fig
%      ASSOCIATED_LEGENDRE, by itself, creates a new ASSOCIATED_LEGENDRE or raises the existing
%      singleton*.
%
%      H = ASSOCIATED_LEGENDRE returns the handle to a new ASSOCIATED_LEGENDRE or the handle to
%      the existing singleton*.
%
%      ASSOCIATED_LEGENDRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASSOCIATED_LEGENDRE.M with the given input arguments.
%
%      ASSOCIATED_LEGENDRE('Property','Value',...) creates a new ASSOCIATED_LEGENDRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Associated_Legendre_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Associated_Legendre_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Associated_Legendre

% Last Modified by GUIDE v2.5 16-Jul-2024 19:07:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Associated_Legendre_OpeningFcn, ...
                   'gui_OutputFcn',  @Associated_Legendre_OutputFcn, ...
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


% --- Executes just before Associated_Legendre is made visible.
function Associated_Legendre_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Associated_Legendre (see VARARGIN)

% Choose default command line output for Associated_Legendre
handles.output = hObject;
global r1 r2
r1=1;
r2=0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Associated_Legendre wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Associated_Legendre_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4



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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global r1 P1 P2 P3 P4 data
P1=get(handles.radiobutton1,'value');
P2=get(handles.radiobutton2,'value');
P3=get(handles.radiobutton3,'value');
P4=get(handles.radiobutton4,'value');
n=str2double(get(handles.edit1,'string'));
N=str2double(get(handles.edit1,'string'));
m=str2double(get(handles.edit2,'string'));
theta1=str2double(get(handles.edit6,'string'));
thetab=str2double(get(handles.edit3,'string'));
thetai=str2double(get(handles.edit4,'string'));
thetae=str2double(get(handles.edit5,'string'));
if P1==1
   if r1==1
        [Pnm,p] = Pnm_row(n, m, theta1); 
        data=[n,m,theta1,Pnm];
        set(handles.uitable1,'data',data);
        axes(handles.axes1);
        p_rot=rot90(p);
        p_rot_flip=flip(p_rot);
        p_rot_flip(p_rot_flip == 0) = NaN;
        p_log10=log10((abs(p_rot_flip)));
        rangex=0:n;
        rangey=0:m;
        imagesc(rangex,rangey,p_log10);
        ax = gca;
        C = ax.Children.CData;
        % 设置透明度数据
        alphaData = ~isnan(C);
        % 设置透明度
        ax.Children.AlphaData = alphaData;
        colormap(jet)
        title(sprintf('P_{%d,%d}(\\theta),     \\theta={%d}°', n, m,theta1));
        xlabel('n(阶)');
        ylabel('m(次)');
        xlim(handles.axes1,[0 n]);
        ylim(handles.axes1,[0 m]);
        num_ticks = 6;
        nn=0:1:n;
        mm=0:1:m;
        indicesx = round(linspace(1, length(nn), num_ticks));
        indicesy = round(linspace(1, length(mm), num_ticks));
        xtick_values= nn(indicesx);
        ytick_values= mm(indicesy);
        set(handles.axes1, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        set(handles.axes1, 'YTick', indicesy-1, 'YTickLabel', num2cell(ytick_values));
        h = colorbar('peer', handles.axes1);
        set(get(h,'Title'),'string','log10');
        axis xy
        axes(handles.axes2);
        errors = Error_curve(n, theta1);
        m_values = 0:1:n;  
        plot(handles.axes2,m_values, errors, 'r','LineWidth', 0.8);
        xlabel(handles.axes2,'阶数');
        ylabel(handles.axes2,'误差');
        xlim(handles.axes2,[0 n]);
        num_ticks = 6;
        nn=0:1:n;
        indicesx = round(linspace(1, length(nn), num_ticks));
        xtick_values= nn(indicesx);
        set(handles.axes2, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        grid on;
        set(handles.axes2, 'GridAlpha', 0.5); 
        set(handles.axes2, 'XMinorGrid', 'on', 'YMinorGrid', 'on');
        handles.axes2.MinorGridAlpha = 0.7;
        NA = errors(n);
        set(handles.edit7,'string',NA);
        maxNA=max(errors);
        set(handles.edit8,'string',maxNA);
   else
    theta_values =thetab:thetai:thetae; 
    data=zeros(length(theta_values),4);
    Pnm = zeros(size(theta_values));  
    h = waitbar(0, '开始计算');
    for i = 1:length(theta_values)
        Pnm(i) = Pnm_row(n, m, theta_values(i));
        data(i,1)=n;
        data(i,2)=m;
        data(i,3)=theta_values(i);
        data(i,4)=Pnm(i);
        waitbar(i / length(theta_values), h, ['正在计算勒让德函数   ',num2str(round(100*(i / length(theta_values)))),'%']);
    end
    close(h);
    axes(handles.axes1)
    plot(handles.axes1,theta_values, Pnm,'LineWidth', 1.5, 'Color', [0 0 0.5]);
    xlabel(handles.axes1,'\theta (余纬)');
    ylabel(handles.axes1,sprintf('P_{%d,%d}(\\theta)', n, m));
    xlim(handles.axes1, [thetab thetae]);
    grid on;
    set(handles.axes1, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
    set(handles.axes1, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
    set(handles.uitable1,'data',data);
   end   
end

if P2==1
   if r1==1
        tic
        [Pnm,P] = Pnm_column(n, m, theta1);
        toc
        data=[n,m,theta1,Pnm];
        set(handles.uitable1,'data',data);
        axes(handles.axes1);
        p=P;
        p_rot=rot90(p);
        p_rot_flip=flip(p_rot);
        p_rot_flip(p_rot_flip == 0) = NaN;
        p_log10=log10((abs(p_rot_flip)));
        rangex=0:n;
        rangey=0:m;
        imagesc(rangex,rangey,p_log10);
        ax = gca;
        C = ax.Children.CData;
        % 设置透明度数据
        alphaData = ~isnan(C);
        % 设置透明度
        ax.Children.AlphaData = alphaData;
        colormap(jet)
       title(sprintf('P_{%d,%d}(\\theta),     \\theta={%d}°', n, m,theta1));
       xlabel('n(阶)');
       ylabel('m(次)');
       xlim(handles.axes1,[0 n]);
       ylim(handles.axes1,[0 m]);
       num_ticks = 6;
        nn=0:1:n;
        mm=0:1:m;
        indicesx = round(linspace(1, length(nn), num_ticks));
        indicesy = round(linspace(1, length(mm), num_ticks));
        xtick_values= nn(indicesx);
        ytick_values= mm(indicesy);
        set(handles.axes1, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        set(handles.axes1, 'YTick', indicesy-1, 'YTickLabel', num2cell(ytick_values));
       h = colorbar('peer', handles.axes1);
       set(get(h,'Title'),'string','log10');
       axis xy
       axes(handles.axes2);
         errors = Error_curve(n, theta1);
         m_values = 0:n;  
         plot(handles.axes2,m_values, errors, 'r','LineWidth', 0.8);
         xlabel(handles.axes2,'阶数');
         ylabel(handles.axes2,'误差');
         xlim(handles.axes2,[0 n]);
         num_ticks = 6;
         nn=0:1:n;
         indicesx = round(linspace(1, length(nn), num_ticks));
         xtick_values= nn(indicesx);
         set(handles.axes2, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
         grid on;  
         set(handles.axes2, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
         set(handles.axes2, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
         handles.axes2.MinorGridAlpha = 0.7;
         NA = errors(n+1);
        set(handles.edit7,'string',NA);
        maxNA=max(errors);
        set(handles.edit8,'string',maxNA);
   else
    theta_values =thetab:thetai:thetae;  
    Pnm = zeros(size(theta_values));   
    data=zeros(length(theta_values),4);
    h = waitbar(0, '开始计算');
    for i = 1:length(theta_values)
        Pnm(i) = Pnm_column(n, m, theta_values(i));
        data(i,1)=n;
        data(i,2)=m;
        data(i,3)=theta_values(i);
        data(i,4)=Pnm(i);
        waitbar(i / length(theta_values), h, ['正在计算勒让德函数   ',num2str(round(100*(i / length(theta_values)))),'%']);
    end
     close(h);
    axes(handles.axes1)
    plot(handles.axes1,theta_values, Pnm,'LineWidth', 1.5, 'Color', [0 0 0.5]);
    xlabel(handles.axes1,'\theta (余纬)');
    ylabel(handles.axes1,sprintf('P_{%d,%d}(\\theta)', n, m));
    xlim(handles.axes1, [thetab thetae]);
    grid on;
    set(handles.axes1, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
    set(handles.axes1, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
    set(handles.uitable1,'data',data);
   end   
end

if P3==1
   if r1==1
        [P,Pnm]=Pnm_corss_order(n,m,theta1);
        data=[n,m,theta1,Pnm];
        set(handles.uitable1,'data',data);
        axes(handles.axes1);
        p=P;
        p_rot=rot90(p);
        p_rot_flip=flip(p_rot);
        p_rot_flip(p_rot_flip == 0) = NaN;
        p_log10=log10((abs(p_rot_flip)));
        rangex=0:n;
        rangey=0:m;
        imagesc(rangex,rangey,p_log10);
        ax = gca;
        C = ax.Children.CData;
        % 设置透明度数据
        alphaData = ~isnan(C);
        % 设置透明度
        ax.Children.AlphaData = alphaData;
        colormap(jet)
       title(sprintf('P_{%d,%d}(\\theta),     \\theta={%d}°', n, m,theta1));
       xlabel('n(阶)');
       ylabel('m(次)');
       xlim(handles.axes1,[0 n]);
       ylim(handles.axes1,[0 m]);
       num_ticks = 6;
        nn=0:1:n;
        mm=0:1:m;
        indicesx = round(linspace(1, length(nn), num_ticks));
        indicesy = round(linspace(1, length(mm), num_ticks));
        xtick_values= nn(indicesx);
        ytick_values= mm(indicesy);
        set(handles.axes1, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        set(handles.axes1, 'YTick', indicesy-1, 'YTickLabel', num2cell(ytick_values));
       h = colorbar('peer', handles.axes1);
       set(get(h,'Title'),'string','log10');
       axis xy
       axes(handles.axes2);
         errors = Error_curve(n, theta1);
         m_values = 0:n;  
         plot(handles.axes2,m_values, errors, 'r','LineWidth', 0.8);
         xlabel(handles.axes2,'阶数');
         ylabel(handles.axes2,'误差');
         xlim(handles.axes2,[0 n]);
         num_ticks = 6;
         nn=0:1:n;
         indicesx = round(linspace(1, length(nn), num_ticks));
         xtick_values= nn(indicesx);
         set(handles.axes2, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
         grid on;  
        set(handles.axes2, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
        set(handles.axes2, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
        handles.axes2.MinorGridAlpha = 0.7;
        NA = errors(n+1);
        set(handles.edit7,'string',NA);
        maxNA=max(errors);
        set(handles.edit8,'string',maxNA);
   else
    theta_values =thetab:thetai:thetae;  
    Pnm = zeros(size(theta_values)); 
    data=zeros(length(theta_values),4);
     h = waitbar(0, '开始计算');
    for i = 1:length(theta_values)
        [P,Pnm(i)]=Pnm_corss_order(n,m,theta_values(i));      
        data(i,1)=n;
        data(i,2)=m;
        data(i,3)=theta_values(i);
        data(i,4)=Pnm(i);
        waitbar(i / length(theta_values), h, ['正在计算勒让德函数   ',num2str(round(100*(i / length(theta_values)))),'%']);
    end
    close(h);
    axes(handles.axes1)
    plot(handles.axes1,theta_values, Pnm,'LineWidth', 1.5, 'Color', [0 0 0.5]);
    xlabel(handles.axes1,'\theta (余纬)');
    ylabel(handles.axes1,sprintf('P_{%d,%d}(\\theta)', n, m));
%     title(handles.axes1,sprintf('Plot of P_{%d,%d}(\\theta)', n, m));
    xlim(handles.axes1, [thetab thetae]);
    grid on;
    set(handles.axes1, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
    set(handles.axes1, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
    set(handles.uitable1,'data',data);
   end   
end

if P4==1
   if r1==1
        [Pnm, P_matrix] = Pnm_Belikov(n, m, theta1);
        data=[n,m,theta1,Pnm];
        set(handles.uitable1,'data',data);
        axes(handles.axes1);
        p=P_matrix;
        p_rot=rot90(p);
        p_rot_flip=flip(p_rot);
        p_rot_flip(p_rot_flip == 0) = NaN;
        p_log10=log10((abs(p_rot_flip)));
        rangex=0:n;
        rangey=0:m;
        imagesc(rangex,rangey,p_log10);
        ax = gca;
        C = ax.Children.CData;
        % 设置透明度数据
        alphaData = ~isnan(C);
        % 设置透明度
        ax.Children.AlphaData = alphaData;
        colormap(jet)
        title(sprintf('P_{%d,%d}(\\theta),     \\theta={%d}°', n, m,theta1));
        xlabel('n(阶)');
        ylabel('m(次)');       
        xlim(handles.axes1,[0 n]);
        ylim(handles.axes1,[0 m]);
        num_ticks = 6;
        nn=0:1:n;
        mm=0:1:m;
        indicesx = round(linspace(1, length(nn), num_ticks));
        indicesy = round(linspace(1, length(mm), num_ticks));
        xtick_values= nn(indicesx);
        ytick_values= mm(indicesy);
        set(handles.axes1, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        set(handles.axes1, 'YTick', indicesy-1, 'YTickLabel', num2cell(ytick_values));
        h = colorbar('peer', handles.axes1);
        set(get(h,'Title'),'string','log10');
        axis xy
        axes(handles.axes2);
        errors = Error_curve(n, theta1);
        m_values = 0:n;  
        plot(handles.axes2,m_values, errors, 'r','LineWidth', 0.8);
        xlabel(handles.axes2,'阶数');
        ylabel(handles.axes2,'误差');
        xlim(handles.axes2,[0 n]);
        num_ticks = 6;
        nn=0:1:n;
        indicesx = round(linspace(1, length(nn), num_ticks));
        xtick_values= nn(indicesx);
        set(handles.axes2, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
        grid on; 
        set(handles.axes2, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
        set(handles.axes2, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
        handles.axes2.MinorGridAlpha = 0.7;
        NA = errors(n+1);
        set(handles.edit7,'string',NA);
        maxNA=max(errors);
        set(handles.edit8,'string',maxNA);
   else
    theta_values =thetab:thetai:thetae;  
    Pnm = zeros(size(theta_values));  
    data=zeros(length(theta_values),4);
     h = waitbar(0, '开始计算');
    for i = 1:length(theta_values)
        Pnm(i) = Pnm_Belikov(n, m, theta_values(i));
        data(i,1)=n;
        data(i,2)=m;
        data(i,3)=theta_values(i);
        data(i,4)=Pnm(i);
        waitbar(i / length(theta_values), h, ['正在计算勒让德函数   ',num2str(round(100*(i / length(theta_values)))),'%']);
    end
    close(h);
    axes(handles.axes1)
    plot(handles.axes1,theta_values, Pnm,'LineWidth', 1.5, 'Color', [0 0 0.5]);
    xlabel(handles.axes1,'\theta (余纬)');
    ylabel(handles.axes1,sprintf('P_{%d,%d}(\\theta)', n, m));
%     title(handles.axes1,sprintf('Plot of P_{%d,%d}(\\theta)', n, m));
    xlim(handles.axes1, [thetab thetae]);
    grid on;
    set(handles.axes1, 'GridAlpha', 0.5); % 设置格网透明度，使格网线条更清晰
    set(handles.axes1, 'XMinorGrid', 'on', 'YMinorGrid', 'on'); % 启用次要网格线
    set(handles.uitable1,'data',data);
   end   
end



% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global r1 r2
r1=get(handles.radiobutton5,'value');
r2=get(handles.radiobutton6,'value');
if r1==1
    set(handles.edit3,'enable','off');
    set(handles.edit4,'enable','off');
    set(handles.edit5,'enable','off');
    set(handles.edit9,'enable','off');
    set(handles.edit3,'string','');
    set(handles.edit4,'string','');
    set(handles.edit5,'string','');
    set(handles.edit9,'string','');
    set(handles.edit7,'enable','on');
    set(handles.edit8,'enable','on');
    set(handles.edit6,'enable','on');
    set(handles.pushbutton12,'enable','off');
else
    set(handles.edit3,'enable','on');
    set(handles.edit4,'enable','on');
    set(handles.edit5,'enable','on');
    set(handles.edit9,'enable','on');
    set(handles.edit7,'enable','off');
    set(handles.edit8,'enable','off');
    set(handles.edit6,'enable','off');
    set(handles.edit6,'string','');
    set(handles.edit7,'string','');
    set(handles.edit8,'string','');
     set(handles.pushbutton12,'enable','on');
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data
[filename,pathname,c]=uiputfile('*.txt','save');
if c==1
file=[pathname,filename];
dlmwrite(file,data);
helpdlg('Successfully saved!')
end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'data','');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global r1 r2
if r1==1
h = figure('visible','off');
new_axes = copyobj(handles.axes1,h);
set(new_axes,'Units','default','Position','default');
    c=colorbar;
    c.Title.String='log10';
    colormap(jet)
    [filename, pathname] = uiputfile({'*.png';'*.bmp';'*.jpg'},'The picture is saved as');
if filename ~= 0
        file = strcat(pathname,filename);
        saveas(h,file);
        msgbox('The image has been successfully saved','Attention','help');
else
        msgbox('The operation has been canceled','Attention','warn');
end
end
if r2==1
    h = figure('visible','off');
new_axes = copyobj(handles.axes1,h);
set(new_axes,'Units','default','Position','default');
    [filename, pathname] = uiputfile({'*.png';'*.bmp';'*.jpg'},'The picture is saved as');
if filename ~= 0
        file = strcat(pathname,filename);
        saveas(h,file);
        msgbox('The image has been successfully saved','Attention','help');
else
        msgbox('The operation has been canceled','Attention','warn');
end
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1, 'reset');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2, 'reset');
set(handles.edit7,'string','');
set(handles.edit8,'string','');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = figure('visible','off');
new_axes = copyobj(handles.axes2,h);
set(new_axes,'Units','default','Position','default');
    [filename, pathname] = uiputfile({'*.png';'*.bmp';'*.jpg'},'The picture is saved as');
if filename ~= 0
        file = strcat(pathname,filename);
        saveas(h,file);
        msgbox('The image has been successfully saved','Attention','help');
else
        msgbox('The operation has been canceled','Attention','warn');
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


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes3, 'reset');


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = figure('visible','off');
new_axes = copyobj(handles.axes3,h);
set(new_axes,'Units','default','Position','default');
    [filename, pathname] = uiputfile({'*.png';'*.bmp';'*.jpg'},'The picture is saved as');
if filename ~= 0
        file = strcat(pathname,filename);
        saveas(h,file);
        msgbox('The image has been successfully saved','Attention','help');
else
        msgbox('The operation has been canceled','Attention','warn');
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


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)、
n=str2double(get(handles.edit1,'string'));
thetab=str2double(get(handles.edit3,'string'));
thetai=str2double(get(handles.edit4,'string'));
thetae=str2double(get(handles.edit5,'string'));
theta_values =0:thetai:thetae;
eps=str2double(get(handles.edit9,'string'));
[results] = Feasible_area(n,theta_values,eps);
rangex=0:1:n;
rangey=theta_values;
imagesc(handles.axes2,rangex,rangey,results);
xlim(handles.axes2,[0 n]);
ylim(handles.axes2,[thetab thetae]);
colormap(handles.axes2,[1 1 1;0.098 0.098 0.502]);
hold(handles.axes2,'on');
h1 = plot(handles.axes2,nan, nan, 's', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0.098 0.098 0.502], 'MarkerSize', 10); % 深蓝色
h2 = plot(handles.axes2,nan, nan, 's', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [1 1 1], 'MarkerSize', 10); % 白色
l=legend(handles.axes2,[h1 h2], {'适用区域', '不适用区域'}, 'Location', 'southeastoutside');
title(l,'区域类型') 
hold( handles.axes2,'off');
xlabel(handles.axes2,'阶');
ylabel(handles.axes2,'\theta (余纬)');
num_ticks = 6;
nn=0:1:n;
indicesx = round(linspace(1, length(nn), num_ticks));
indicesy = round(linspace(thetab,thetae, num_ticks));
% ytick_values = theta_values(indicesy);
xtick_values= nn(indicesx);
set(handles.axes2, 'YTick', indicesy, 'YTickLabel', num2cell(indicesy));
set(handles.axes2, 'XTick', indicesx-1, 'XTickLabel', num2cell(xtick_values));
axis(handles.axes2, 'xy');
