function varargout = RIntSum2Sqr(varargin)
% RINTSUM2SQR MATLAB code for RIntSum2Sqr.fig
%      RINTSUM2SQR, by itself, creates a new RINTSUM2SQR or raises the existing
%      singleton*.
%
%      H = RINTSUM2SQR returns the handle to a new RINTSUM2SQR or the handle to
%      the existing singleton*.
%
%      RINTSUM2SQR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RINTSUM2SQR.M with the given input arguments.
%
%      RINTSUM2SQR('Property','Value',...) creates a new RINTSUM2SQR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RIntSum2Sqr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RIntSum2Sqr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RIntSum2Sqr

% Last Modified by GUIDE v2.5 25-Dec-2018 17:02:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @RIntSum2Sqr_OpeningFcn, ...
    'gui_OutputFcn',  @RIntSum2Sqr_OutputFcn, ...
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


% --- Executes just before RIntSum2Sqr is made visible.
function RIntSum2Sqr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RIntSum2Sqr (see VARARGIN)

% Choose default command line output for RIntSum2Sqr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RIntSum2Sqr wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RIntSum2Sqr_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of min as text
%        str2double(get(hObject,'String')) returns contents of min as a double


% --- Executes during object creation, after setting all properties.
function min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max as text
%        str2double(get(hObject,'String')) returns contents of max as a double


% --- Executes during object creation, after setting all properties.
function max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in result_s.
function result_s_Callback(hObject, eventdata, handles)
% hObject    handle to result_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns result_s contents as cell array
%        contents{get(hObject,'Value')} returns selected item from result_s


% --- Executes during object creation, after setting all properties.
function result_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in select.
function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select


% --- Executes during object creation, after setting all properties.
function select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function theorem(handles)
tic;
listselect = get(handles.select,'String');
selecttype = listselect{get(handles.select,'Value')};
n_min=str2double(get(handles.min,'String'));
n_max=str2double(get(handles.max,'String'));
nrange=[n_min:n_max];

if isnan(n_min)==1 || isnan(n_max)==1
    set(handles.err,'String','Error : input must be integer');
    set(handles.result_s,'String','');
    set(handles.result_ns,'String','');
    return;
elseif floor(n_min)~=n_min || floor(n_max)~=n_max
    set(handles.err,'String','Error : range of n must be integer');
    set(handles.result_s,'String','');
    set(handles.result_ns,'String','');
    return;
elseif (n_min<0 || n_max<0)
    set(handles.err,'String','Error : range of n must be integer positif');
    set(handles.result_s,'String','');
    set(handles.result_ns,'String','');
    return;
elseif (n_min>n_max)
    set(handles.err,'String','Error : minimum n > maximum n');
    set(handles.result_s,'String','');
    set(handles.result_ns,'String','');
    return;
end
if length(nrange)>1
    if length(nrange)>200 && n_max>500 && n_max <=2500
        set(handles.err,'String','Error : for n max > 500, range is 200');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;
    elseif length(nrange)>100 && n_max>2500 && n_max <=5000
        set(handles.err,'String','Error : for n max > 2500, range is 50');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;
    elseif length(nrange)>50 && n_max>5000 && n_max <=7500
        set(handles.err,'String','Error : for n max > 5000, range is 50');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;
    elseif length(nrange)>25 && n_max>7500 && n_max <=9000
        set(handles.err,'String','Error : for n max > 7500, range is 25');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;
    elseif length(nrange)>10 && n_max>9000 && n_max <=10000
        set(handles.err,'String','Error : for n max > 9000, range is 10');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;    
    elseif n_max>10000 || n_min>10000
        set(handles.err,'String','Error : maximum n is 10000');
        set(handles.result_s,'String','');
        set(handles.result_ns,'String','');
        return;
    end
elseif n_max>10000 || n_min>10000
    set(handles.err,'String','Error : maximum n is 10000');
    set(handles.result_s,'String','');
    set(handles.result_ns,'String','');
    return;
end
if n_min<2
    switch selecttype
        case 'Theorem 16'
            set(handles.err,'String','Error : For Theorem 16, n >=2');
            set(handles.result_s,'String','');
            set(handles.result_ns,'String','');
            return;
    end
end
ni=0;
nsi=0;
for i=1:length(nrange)
    n=nrange(i);
    pri=primes(n+10);
    k0=1;
    for i=1:length(pri)
        if mod(pri(i),4)==3
            q1(k0)=pri(i);
            k0=k0+1;
        end
    end
    k2=1;
    for i=1:length(pri)
        if mod(pri(i),4)==1
            q2(k2)=pri(i);
            k2=k2+1;
        end
    end
    k=0;
    %syarat 1
    for i=1:length(q1)
        if mod(n,q1(i))==0
            if mod(n,(q1(i))^2)==0
                k=1;
            end
        end
    end
    %syarat 2
    if mod(n,4)==0
        k=1;
    end
    switch selecttype
        case 'Theorem 16'
            %syarat 3
            for i=1:length(q2)
                if mod(n,(q2(i)))==0
                    k=0;
                    break
                end
            end
            %syarat 4
            if mod(n,2)==1
                n0=n;
                s=0;
                while floor(n0/5)==(n0/5)
                    s=s+1;
                    n0=n0/5;
                end
                if s<=2
                    for i=1:length(q2)
                        if mod(n0,(q2(i)))==0
                            k=0;
                            break
                        else
                            k=1;
                        end
                    end
                end
            end
        case 'Theorem 17'
            
    end
    
    if k==0
        z=zeros(1,n);
        switch selecttype
            case 'Theorem 16'
                for a=1:n-1
                    for b=1:n-1
                        m=(a)^2+(b)^2;
                        m0=mod(m,n);
                        if m0>=0 && m0<n
                            z(m0+1)=1;
                        else
                            continue
                        end
                    end
                    if sum(z)==n
                        break
                    else continue
                    end
                end
            case 'Theorem 17'
                for a=1:n
                    for b=1:n
                        m=(a-1)^2+(b-1)^2;
                        m0=mod(m,n);
                        if m0>=0 && m0<n
                            z(m0+1)=1;
                        else
                            continue
                        end
                    end
                    if sum(z)==n
                        break
                    else continue
                    end
                end
        end
        
        if sum(z)==n
            ni=ni+1;
            if isequal(ni,1)
                sat={['n = ',num2str(n)]};
            else
                sat=[sat;{['n = ',num2str(n)]}];
                
            end
        else
            nsi=nsi+1;
            if isequal(nsi,1)
                nsat={['n = ',num2str(n)]};
                
            else
                nsat=[nsat;{['n = ',num2str(n)]}];
            end
        end
    else
        nsi=nsi+1;
        if isequal(nsi,1)
            nsat={['n = ',num2str(n)]};
        else
            nsat=[nsat;{['n = ',num2str(n)]}];
        end
    end
    
end
set(handles.err,'String','');
if ni==0
    set(handles.result_s,'String','');
    set(handles.result_ns,'String',nsat);
elseif nsi==0
    set(handles.result_ns,'String','');
    set(handles.result_s,'String',sat);
else
    set(handles.result_s,'String',sat);
    set(handles.result_ns,'String',nsat);
end
t=toc;
set(handles.err,'String',{['Time : ',num2str(t),' s']});



% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.err,'String','is load ...');
set(handles.result_s,'String','');
set(handles.result_ns,'String','');
pause(0.01)
theorem(handles)



% --- Executes on key press with focus on start and none of its controls.
function start_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function help_ClickedCallback(hObject, eventdata, handles)
% Create help message
dlgname = 'About R_Int as the Sum of 2 Squares App';
txt = {'This app is reference to :';
    '';
    'Representing Integers as the Sum of Two';
    'Squares in the Ring Zn';
    'by : Joshua Harrington, Lenny Jones, and Alicia Lamarche';
    'Department of Mathematics';
    'Shippensburg University';
    'https://www.researchgate.net/publication/261289340',
    '_Representing_Integers_as_the_Sum_of_Two_Squares';
    '_in_the_Ring_Z_n';
    '';
    '';
    'Created by :'
    'Rahmad Riyanto'};
helpdlg(txt,dlgname);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.result_s,'String','');
set(handles.result_ns,'String','');
set(handles.err,'String','');


% --- Executes on selection change in result_ns.
function result_ns_Callback(hObject, eventdata, handles)
% hObject    handle to result_ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns result_ns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from result_ns


% --- Executes during object creation, after setting all properties.
function result_ns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result_ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
