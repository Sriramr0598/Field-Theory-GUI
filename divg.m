function varargout = divg(varargin)
% DIVG MATLAB code for divg.fig
%      DIVG, by itself, creates a new DIVG or raises the existing
%      singleton*.
%
%      H = DIVG returns the handle to a new DIVG or the handle to
%      the existing singleton*.
%
%      DIVG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIVG.M with the given input arguments.
%
%      DIVG('Property','Value',...) creates a new DIVG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before divg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to divg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help divg

% Last Modified by GUIDE v2.5 28-Nov-2018 20:38:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @divg_OpeningFcn, ...
                   'gui_OutputFcn',  @divg_OutputFcn, ...
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


% --- Executes just before divg is made visible.
function divg_OpeningFcn(hObject, eventdata, handles, varargin)

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to divg (see VARARGIN)

% Choose default command line output for divg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes divg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = divg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=get(handles.u1, 'SelectedObject');
a2=get(a1,'String');

syms x y z 

f1=sym(get(handles.e1, 'String'));
f2=sym(get(handles.e2, 'String'));
f3=sym(get(handles.e3, 'String'));


p1=(diff(f1,x));
p2=(diff(f2,y));
p3=(diff(f3,z));
    
t=char((p1+p2+p3));

set(handles.o1, 'string', t);







function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double


% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e2 as text
%        str2double(get(hObject,'String')) returns contents of e2 as a double


% --- Executes during object creation, after setting all properties.
function e2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e3_Callback(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e3 as text
%        str2double(get(hObject,'String')) returns contents of e3 as a double


% --- Executes during object creation, after setting all properties.
function e3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function o1_Callback(hObject, eventdata, handles)
% hObject    handle to o1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of o1 as text
%        str2double(get(hObject,'String')) returns contents of o1 as a double


% --- Executes during object creation, after setting all properties.
function o1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to o1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z 

f1=sym(get(handles.e1, 'String'));
f2=sym(get(handles.e2, 'String'));
f3=sym(get(handles.e3, 'String'));


p1=(diff(f1,z));
p2=(diff(f1,y));
p3=(diff(f2,z));
p4=(diff(f2,x));
p5=(diff(f3,y));
p6=(diff(f3,x));

    
t1=char((p5-p3)); 
t2=char((p1-p6));
t3=char((p4-p2));

set(handles.o2, 'string', t1);
set(handles.o3, 'string', t2);
set(handles.o4, 'string', t3);




function o2_Callback(hObject, eventdata, handles)
% hObject    handle to o2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of o2 as text
%        str2double(get(hObject,'String')) returns contents of o2 as a double


% --- Executes during object creation, after setting all properties.
function o2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to o2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function o3_Callback(hObject, eventdata, handles)
% hObject    handle to o3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of o3 as text
%        str2double(get(hObject,'String')) returns contents of o3 as a double


% --- Executes during object creation, after setting all properties.
function o3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to o3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function o4_Callback(hObject, eventdata, handles)
% hObject    handle to o4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of o4 as text
%        str2double(get(hObject,'String')) returns contents of o4 as a double


% --- Executes during object creation, after setting all properties.
function o4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to o4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hint: get(hObject,'Value') returns toggle state of rb1


% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2


% --- Executes when selected object is changed in u1.
function u1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in u1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=get(handles.u1, 'SelectedObject');
a2=get(a1,'String');


switch a2
    case 'Only Electric Field'
        set(handles.edit8, 'Enable', 'Off') &   set(handles.edit9, 'Enable', 'Off') & set(handles.edit10, 'Enable', 'Off') 
        set(handles.p1, 'Enable', 'On') &set(handles.p2, 'Enable', 'On') 
        set(handles.e1, 'Enable', 'On') & set(handles.e2, 'Enable', 'On') & set(handles.e3, 'Enable', 'On') 
        set(handles.o1, 'Enable', 'On') &set(handles.o2, 'Enable', 'On') &set(handles.o3, 'Enable', 'On') &set(handles.o4, 'Enable', 'On') 
        
        set(handles.p3, 'Enable', 'Off') &set(handles.p4, 'Enable', 'Off') 
        set(handles.e11, 'Enable', 'Off') &set(handles.e12, 'Enable', 'Off') &set(handles.e13, 'Enable', 'Off') &set(handles.e14, 'Enable', 'Off')
        set(handles.e15, 'Enable', 'On') &set(handles.e16, 'Enable', 'On')  &set(handles.p6, 'Enable', 'On')
        set(handles.pnl7, 'Visible', 'On') & set(handles.pnl8, 'Visible', 'Off')& set(handles.pnl9, 'Visible', 'Off')
        set(handles.p11, 'Enable', 'On') &set(handles.p12, 'Enable', 'Off')
        set(handles.p14, 'Enable', 'On') & set(handles.p13, 'Visible', 'On') & set(handles.e29, 'Visible', 'On')
        set(handles.p15, 'Enable', 'On') & set(handles.p17, 'Visible', 'Off') 
        set(handles.p18, 'Visible', 'Off') & set(handles.e30, 'Visible', 'Off') & set(handles.e31, 'Visible', 'Off') & set(handles.e32, 'Visible', 'Off') 
        set(handles.text28, 'Visible', 'Off') & set(handles.text29, 'Visible', 'Off') & set(handles.text30, 'Visible', 'Off') 

        
        
    case 'Only Magnetic Field'
        set(handles.edit8, 'Enable', 'On') &   set(handles.edit9, 'Enable', 'On') & set(handles.edit10, 'Enable', 'On') 
        set(handles.p1, 'Enable', 'Off') &set(handles.p2, 'Enable', 'Off') 
        set(handles.e1, 'Enable', 'Off') & set(handles.e2, 'Enable', 'Off') & set(handles.e3, 'Enable', 'Off') 
        set(handles.o1, 'Enable', 'Off') &set(handles.o2, 'Enable', 'Off') &set(handles.o3, 'Enable', 'Off') &set(handles.o4, 'Enable', 'Off') 
        
         set(handles.p3, 'Enable', 'On') &set(handles.p4, 'Enable', 'On') 
         set(handles.e11, 'Enable', 'On') &set(handles.e12, 'Enable', 'On') &set(handles.e13, 'Enable', 'On') &set(handles.e14, 'Enable', 'On') 
         set(handles.e15, 'Enable', 'Off') &set(handles.e16, 'Enable', 'Off')  &set(handles.p6, 'Enable', 'Off')
         set(handles.pnl7, 'Visible', 'Off')& set(handles.pnl8, 'Visible', 'Off')& set(handles.pnl9, 'Visible', 'On')
         set(handles.p11, 'Enable', 'Off') &set(handles.p12, 'Enable', 'On')
         set(handles.p14, 'Enable', 'Off') & set(handles.p13, 'Visible', 'Off') & set(handles.e29, 'Visible', 'Off')
         set(handles.p15, 'Enable', 'Off')& set(handles.p17, 'Visible', 'Off') 
        set(handles.p18, 'Visible', 'Off') & set(handles.e30, 'Visible', 'Off') & set(handles.e31, 'Visible', 'Off') & set(handles.e32, 'Visible', 'Off') 
        set(handles.text28, 'Visible', 'Off') & set(handles.text29, 'Visible', 'Off') & set(handles.text30, 'Visible', 'Off') 
         
         
    case 'Both Electric and Magentic Fields'
        set(handles.edit8, 'Enable', 'On') &   set(handles.edit9, 'Enable', 'On') & set(handles.edit10, 'Enable', 'On') 
        set(handles.p1, 'Enable', 'On') &set(handles.p2, 'Enable', 'On') 
        set(handles.e1, 'Enable', 'On') & set(handles.e2, 'Enable', 'On') & set(handles.e3, 'Enable', 'On') 
        set(handles.o1, 'Enable', 'On') &set(handles.o2, 'Enable', 'On') &set(handles.o3, 'Enable', 'On') &set(handles.o4, 'Enable', 'On') 
        
         set(handles.p3, 'Enable', 'On') &set(handles.p4, 'Enable', 'On') 
         set(handles.e11, 'Enable', 'On') &set(handles.e12, 'Enable', 'On') &set(handles.e13, 'Enable', 'On') &set(handles.e14, 'Enable', 'On') 
        set(handles.e15, 'Enable', 'On') &set(handles.e16, 'Enable', 'On')  &set(handles.p6, 'Enable', 'On')
        set(handles.pnl7, 'Visible', 'Off')& set(handles.pnl8, 'Visible', 'On')& set(handles.pnl9, 'Visible', 'Off')
        set(handles.p11, 'Enable', 'On') &set(handles.p12, 'Enable', 'On')
        set(handles.p14, 'Enable', 'On') & set(handles.p13, 'Visible', 'Off') & set(handles.e29, 'Visible', 'Off')
        set(handles.p15, 'Enable', 'On')& set(handles.p17, 'Visible', 'On') 
        set(handles.p18, 'Visible', 'On') & set(handles.e30, 'Visible', 'On') & set(handles.e31, 'Visible', 'On') & set(handles.e32, 'Visible', 'On') 
        set(handles.text28, 'Visible', 'On') & set(handles.text29, 'Visible', 'On') & set(handles.text30, 'Visible', 'On') 
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


% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z 

f1=sym(get(handles.edit8, 'String'));
f2=sym(get(handles.edit9, 'String'));
f3=sym(get(handles.edit10, 'String'));


p1=(diff(f1,z));
p2=(diff(f1,y));
p3=(diff(f2,z));
p4=(diff(f2,x));
p5=(diff(f3,y));
p6=(diff(f3,x));

    
t1=char((p5-p3)); 
t2=char((p1-p6));
t3=char((p4-p2));

set(handles.e12, 'string', t1);
set(handles.e13, 'string', t2);
set(handles.e14, 'string', t3);



function e12_Callback(hObject, eventdata, handles)
% hObject    handle to e12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e12 as text
%        str2double(get(hObject,'String')) returns contents of e12 as a double


% --- Executes during object creation, after setting all properties.
function e12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e13_Callback(hObject, eventdata, handles)
% hObject    handle to e13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e13 as text
%        str2double(get(hObject,'String')) returns contents of e13 as a double


% --- Executes during object creation, after setting all properties.
function e13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e14_Callback(hObject, eventdata, handles)
% hObject    handle to e14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e14 as text
%        str2double(get(hObject,'String')) returns contents of e14 as a double


% --- Executes during object creation, after setting all properties.
function e14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p3.
function p3_Callback(hObject, eventdata, handles)
% hObject    handle to p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=get(handles.u1, 'SelectedObject');
a2=get(a1,'String');

syms x y z 

f1=sym(get(handles.edit8, 'String'));
f2=sym(get(handles.edit9, 'String'));
f3=sym(get(handles.edit10, 'String'));


p1=(diff(f1,x));
p2=(diff(f2,y));
p3=(diff(f3,z));
    
t=char((p1+p2+p3));

set(handles.e11, 'string', t);



function e11_Callback(hObject, eventdata, handles)
% hObject    handle to e11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e11 as text
%        str2double(get(hObject,'String')) returns contents of e11 as a double


% --- Executes during object creation, after setting all properties.
function e11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function u1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to u1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
% --- Executes on button press in p5.
% hObject    handle to p5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=str2num(get(handles.e15, 'String'));

p1=sym(get(handles.e1, 'String'));
p2=sym(get(handles.e2, 'String'));
p3=sym(get(handles.e3, 'String'));

t=char(a1*(p1+p2+p3));

set(handles.e16, 'String', t);




function e15_Callback(hObject, eventdata, handles)
% hObject    handle to e15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e15 as text
%        str2double(get(hObject,'String')) returns contents of e15 as a double


% --- Executes during object creation, after setting all properties.
function e15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e16_Callback(hObject, eventdata, handles)
% hObject    handle to e16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e16 as text
%        str2double(get(hObject,'String')) returns contents of e16 as a double


% --- Executes during object creation, after setting all properties.
function e16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p6.
function p6_Callback(hObject, eventdata, handles)
% hObject    handle to p6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=str2num(get(handles.e15, 'String'));

p1=sym(get(handles.e1, 'String'));
p2=sym(get(handles.e2, 'String'));
p3=sym(get(handles.e3, 'String'));

e1x=char(a1*p1);
e1y=char(a1*p2);
e1z=char(a1*p3);

set(handles.e16, 'String', ['(' e1x ') i + ' '(' e1y ') j + '   '(' e1z ') k' ]);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e18_Callback(hObject, eventdata, handles)
% hObject    handle to e18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e18 as text
%        str2double(get(hObject,'String')) returns contents of e18 as a double


% --- Executes during object creation, after setting all properties.
function e18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z

a1=str2num((get(handles.edit17, 'String')));

a2=sym(get(handles.e21, 'String'));
a3=sym(get(handles.e22, 'String'));
a4=sym(get(handles.e23, 'String'));

a5=sym(get(handles.edit8, 'String'));
a6=sym(get(handles.edit9, 'String'));
a7=sym(get(handles.edit10, 'String'));

p1=sym(get(handles.e1, 'String'));
p2=sym(get(handles.e2, 'String'));
p3=sym(get(handles.e3, 'String'));

e1x=sym(a1*p1);
e1y=sym(a1*p2);
e1z=sym(a1*p3);


b1=[a2 a3 a4];
b2=[a5 a6 a7];
b3=cross(b1,b2);

b1x=sym(a1*(b3(1)));
b1y=sym(a1*(b3(2)));
b1z=sym(a1*(b3(3)));

s1x=char(e1x+b1x);
s1y=char(e1y+b1y);
s1z=char(e1z+b1z);


set(handles.e18, 'String', ['(' s1x ') i + ' '(' s1y ') j + '   '(' s1z ') k' ]);



function e24_Callback(hObject, eventdata, handles)
% hObject    handle to e24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e24 as text
%        str2double(get(hObject,'String')) returns contents of e24 as a double


% --- Executes during object creation, after setting all properties.
function e24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e25_Callback(hObject, eventdata, handles)
% hObject    handle to e25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e25 as text
%        str2double(get(hObject,'String')) returns contents of e25 as a double


% --- Executes during object creation, after setting all properties.
function e25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p9.
function p9_Callback(hObject, eventdata, handles)
% hObject    handle to p9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z

a1=str2num((get(handles.e24, 'String')));
a2=sym(get(handles.e26, 'String'));
a3=sym(get(handles.e27, 'String'));
a4=sym(get(handles.e28, 'String'));

a5=sym(get(handles.edit8, 'String'));
a6=sym(get(handles.edit9, 'String'));
a7=sym(get(handles.edit10, 'String'));
a8=str2num(get(handles.e24, 'String'));

b1=[a1 a2 a3];
b2=[a5 a6 a7];
b3=cross(b1,b2);

bx=char(a8*(b3(1)));
by=char(a8*(b3(2)));
bz=char(a8*(b3(3)));


set(handles.e25, 'String', ['(' bx ') i + ' '(' by ') j + '   '(' bz ') k' ]);




function e26_Callback(hObject, eventdata, handles)
% hObject    handle to e26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e26 as text
%        str2double(get(hObject,'String')) returns contents of e26 as a double


% --- Executes during object creation, after setting all properties.
function e26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e27_Callback(hObject, eventdata, handles)
% hObject    handle to e27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e27 as text
%        str2double(get(hObject,'String')) returns contents of e27 as a double


% --- Executes during object creation, after setting all properties.
function e27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e28_Callback(hObject, eventdata, handles)
% hObject    handle to e28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e28 as text
%        str2double(get(hObject,'String')) returns contents of e28 as a double


% --- Executes during object creation, after setting all properties.
function e28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e21_Callback(hObject, eventdata, handles)
% hObject    handle to e21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e21 as text
%        str2double(get(hObject,'String')) returns contents of e21 as a double


% --- Executes during object creation, after setting all properties.
function e21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e22_Callback(hObject, eventdata, handles)
% hObject    handle to e22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e22 as text
%        str2double(get(hObject,'String')) returns contents of e22 as a double


% --- Executes during object creation, after setting all properties.
function e22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e23_Callback(hObject, eventdata, handles)
% hObject    handle to e23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e23 as text
%        str2double(get(hObject,'String')) returns contents of e23 as a double


% --- Executes during object creation, after setting all properties.
function e23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p10.
% hObject    handle to p10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in p11.
function p11_Callback(hObject, eventdata, handles)
% hObject    handle to p11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% syms x y z 

f1=str2func(['@(x,y,z)' get(handles.e1, 'String')]);
f2=str2func(['@(x,y,z)' get(handles.e2, 'String')]);
f3=str2func(['@(x,y,z)' get(handles.e3, 'String')]);




x1 = linspace(-3,3,10);
y1 = linspace(-3,3,10);
z1 = linspace(-3,3,10);

for i = 1 : 10
    for j = 1:10
        for k = 1:10
            f1func(i,j,k) = f1(x1(i),y1(j),z1(k));
            f2func(i,j,k) = f2(x1(i),y1(j),z1(k));
            f3func(i,j,k) = f3(x1(i),y1(j),z1(k));
            
        end
    end
end

[x2, y2, z2] = meshgrid(y1,x1,z1);
figure;
quiver3(x2, y2, z2, f1func, f2func, f3func);
hold on;
% quiver3(x2,y2,z2,g1func,g2func,g3func);


% --- Executes on button press in p12.
function p12_Callback(hObject, eventdata, handles)
% hObject    handle to p12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

g1=str2func(['@(x,y,z)' get(handles.edit8, 'String')]);
g2=str2func(['@(x,y,z)' get(handles.edit9, 'String')]);
g3=str2func(['@(x,y,z)' get(handles.edit10, 'String')]);

x1 = linspace(-3,3,10);
y1 = linspace(-3,3,10);
z1 = linspace(-3,3,10);

for i = 1 : 10
    for j = 1:10
        for k = 1:10
         
            g1func(i,j,k) = g1(x1(i),y1(j),z1(k));
            g2func(i,j,k) = g2(x1(i),y1(j),z1(k));
            g3func(i,j,k) = g3(x1(i),y1(j),z1(k));
        end
    end
end

[x2, y2, z2] = meshgrid(y1,x1,z1);
figure;
quiver3(x2,y2,z2,g1func,g2func,g3func);


% --- Executes on button press in p13.
function p13_Callback(hObject, eventdata, handles)
% hObject    handle to p13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z;
a1=sym(get(handles.e1, 'String'));
a2=sym(get(handles.e2, 'String'));
a3=sym(get(handles.e3, 'String'));

s1=char(int(-a1,x));
s2=char(int(-a2,x));
s3=char(int(-a3,x));

set(handles.e29,'String',[s1  s2  s3]);


% % --- Executes during object creation, after setting all properties.
% function t27_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to t27 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called



function e29_Callback(hObject, eventdata, handles)
% hObject    handle to e29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e29 as text
%        str2double(get(hObject,'String')) returns contents of e29 as a double


% --- Executes during object creation, after setting all properties.
function e29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p14.
function p14_Callback(hObject, eventdata, handles)
% hObject    handle to p14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    V1 = get(handles.e29, 'string');
    V1 = ['@(x,y,z)' V1];
    V1 = str2func(V1);
    
    x1 = linspace(-5,5,20);
    y1 = linspace(-5,5,20);
    z1 = linspace(-5,5,20);
    
    [x2, y2, z2] = meshgrid(x1,y1,z1);
    
    for i = 1 : 20
        for j = 1 : 20
            for k = 1 : 20
%                 Ex1matrx(i,j,k) = Ex1(x1(i),y1(j),z1(k));
%                 Ey1matrx(i,j,k) = Ey1(x1(i),y1(j),z1(k));
%                 Ez1matrx(i,j,k) = Ez1(x1(i),y1(j),z1(k));
                V1matrx(i,j,k) = V1(x1(i),y1(j),z1(k));
            end
        end
    end
    
%     figure;
%     quiver3(x2, y2, z2, Ex1matrx, Ey1matrx, Ez1matrx);
%     xlabel('x');
%     ylabel('y');
%     zlabel('z');
    
    figure;
    sizeIndex = (max(V1matrx(:)) - min(V1matrx(:)))/10;
    for valueIndex = min(V1matrx(:)) : sizeIndex : max(V1matrx(:))
        isosurface(x1,y1,z1,V1matrx,valueIndex); hold on;
    end


% --- Executes on button press in p15.
function p15_Callback(hObject, eventdata, handles)
% hObject    handle to p15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% clc
% close all; clear all;
%-------------------------------------------------------------------------%
%                   SYMBOLS USED IN THIS CODE                             
%-------------------------------------------------------------------------%
% E = Total electric field
% Ex = X-Component of Electric-Field
% Ey = Y-Component of Electric-Field
% n = Number of charges
% Q = All the 'n' charges are stored here
% Nx = Number of grid points in X- direction
% Ny = Number of grid points in Y-Direction
% eps_r = Relative permittivity
% r = distance between a selected point and the location of charge
% ex = unit vector for x-component electric field
% ey = unit vector for y-component electric field
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
%                         INITIALIZATION                                  
%          Here, all the grid, size, charges, etc. are defined
%-------------------------------------------------------------------------%
% Constant 1/(4*pi*epsilon_0) = 9*10^9
k = 9*10^9;
% Enter the Relative permittivity
eps_r = 1;
charge_order = 10^-9; % milli, micro, nano etc..
const = k*charge_order/eps_r;
% Enter the dimensions
Nx = 101; % For 1 meter
Ny = 101; % For 1 meter
% Enter the number of charges.
n = 2;
% Electric fields Initialization
E_f = zeros(Nx,Ny);
Ex = E_f;
Ey = E_f;
% Vectors initialization
ex = E_f;
ey = E_f;
r = E_f;
r_square = E_f;
% Array of charges
s1=str2num(get(handles.e15, 'String'));
Q = [s1,-s1];
% Array of locations
X = [5,-5];
Y = [0,0];
%-------------------------------------------------------------------------%
%                   COMPUTATION OF ELECTRIC FIELDS
%-------------------------------------------------------------------------%
%  Repeat for all the 'n' charges
for k = 1:n
    q = Q(k);
    
    % Compute the unit vectors
    for i=1:Nx
        for j=1:Ny
            r_square(i,j) = (i-51-X(k))^2+(j-51-Y(k))^2;
            r(i,j) = sqrt(r_square(i,j));
            ex(i,j) = ex(i,j)+(i-51-X(k))./r(i,j);
            ey(i,j) = ey(i,j)+(j-51-Y(k))./r(i,j);
        end
    end
    
    
    E_f = E_f + q.*const./r_square;
    Ex = Ex + E_f.*ex.*const;
    Ey = Ex + E_f.*ey.*const;
end
%-------------------------------------------------------------------------%
%                   PLOT THE RESULTS
%-------------------------------------------------------------------------%
x_range = (1:Nx)-51;
y_range = (1:Ny)-51;
contour_range = -8:0.02:8;
figure;
contour(x_range,y_range,E_f',contour_range,'linewidth',0.7);
axis([-15 15 -15 15]);
colorbar('location','eastoutside','fontsize',12);
xlabel('x ','fontsize',14);
ylabel('y ','fontsize',14);
title('Electric field distribution, E (x,y) in V/m','fontsize',14);


% --- Executes on button press in p16
% hObject    handle to p16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in p17.
function p17_Callback(hObject, eventdata, handles)
% hObject    handle to p17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x = linspace(-5,5,100);
y = linspace(-5,5,100);
z = linspace(-5,5,100);

[X, Y, Z] = meshgrid(x, y, z);

Ex = sin(2*pi/5*Z);
Ey = 0*X;
Ez = 0*X;

[Bx, By, Bz, V] = curl(X, Y, Z, Ex, Ey, Ez);

Eplot = 0*x;
Bplot = 0*x;
for i=1:100  %% Integration-like procedure
    Eplot(i) = mean(mean(Ex(:,:,i),1),2);
    Bplot(i) = mean(mean(By(:,:,i),1),2);
end

figure;
plot3(0*x, y, Eplot, 'b', 'LineWidth', 2); hold on
h = quiver3(0*x(1:3:100), y(1:3:100), 0*z(1:3:100), 0*x(1:3:100), 0*y(1:3:100), Eplot(1:3:100), 0, 'b', 'LineWidth', 1);
set(h, 'maxheadsize', 0.0);
plot3(Bplot, y, 0*z, 'g', 'LineWidth', 2);
h = quiver3(0*x(1:3:100), y(1:3:100), 0*z(1:3:100), Bplot(1:3:100), 0*y(1:3:100), 0*z(1:3:100), 0, 'g', 'LineWidth', 1);
set(h, 'maxheadsize', 0.0);
grid on, axis square


% --- Executes on button press in p18.
function p18_Callback(hObject, eventdata, handles)
% hObject    handle to p18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

syms x y z
EX = sym(get(handles.e1, 'string'));
EY = sym(get(handles.e2, 'string'));
EZ = sym(get(handles.e3, 'string'));
E = [EX EY EZ];

HX = sym(get(handles.edit8, 'string'));
HY = sym(get(handles.edit9, 'string'));
HZ = sym(get(handles.edit10, 'string'));
H = [HX HY HZ];

S = cross(E,H);
SX = char(S(1));
SY = char(S(2));
SZ = char(S(3));

set(handles.e30, 'string', SX);
set(handles.e31, 'string', SY);
set(handles.e32, 'string', SZ);



function e30_Callback(hObject, eventdata, handles)
% hObject    handle to e30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e30 as text
%        str2double(get(hObject,'String')) returns contents of e30 as a double


% --- Executes during object creation, after setting all properties.
function e30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e31_Callback(hObject, eventdata, handles)
% hObject    handle to e31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e31 as text
%        str2double(get(hObject,'String')) returns contents of e31 as a double


% --- Executes during object creation, after setting all properties.
function e31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e32_Callback(hObject, eventdata, handles)
% hObject    handle to e32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e32 as text
%        str2double(get(hObject,'String')) returns contents of e32 as a double


% --- Executes during object creation, after setting all properties.
function e32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
