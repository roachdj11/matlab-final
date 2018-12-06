% Jake Hemmerle
% about page commit 2
% Dylan Roach
% asdf

function varargout = TeamProjectGui(varargin)
% TEAMPROJECTGUI MATLAB code for TeamProjectGui.fig
%      TEAMPROJECTGUI, by itself, creates a new TEAMPROJECTGUI or raises the existing
%      singleton*.
%
%      H = TEAMPROJECTGUI returns the handle to a new TEAMPROJECTGUI or the handle to
%      the existing singleton*.
%
%      TEAMPROJECTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEAMPROJECTGUI.M with the given input arguments.
%
%      TEAMPROJECTGUI('Property','Value',...) creates a new TEAMPROJECTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TeamProjectGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TeamProjectGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TeamProjectGui

% Last Modified by GUIDE v2.5 05-Dec-2018 19:28:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TeamProjectGui_OpeningFcn, ...
                   'gui_OutputFcn',  @TeamProjectGui_OutputFcn, ...
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


% --- Executes just before TeamProjectGui is made visible.
function TeamProjectGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TeamProjectGui (see VARARGIN)

% Choose default command line output for TeamProjectGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TeamProjectGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TeamProjectGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4



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


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        der = diff(f,'x');
        der = char(der);
        v = get(handles.checkbox3,'Value');
            if v == 1
                set(handles.text10, 'String', der);
            else
                set(handles.text10, 'String', '');
            end
	case 2	% User Picked 2nd Item on Menu
        integral = int(f, 'x');
        integral = char(integral);
		v = get(handles.checkbox3,'Value');
            if v == 1
            set(handles.text10, 'String', integral);
            else
            set(handles.text10, 'String', '');
            end
end

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        doub_der = diff(diff(f,'x'));
        doub_der = char(doub_der);
        v = get(handles.checkbox4,'Value');
            if v == 1
                set(handles.text11, 'String', doub_der);
            else
                set(handles.text11, 'String', '');
            end
	case 2	% User Picked 2nd Item on Menu
        doub_integral = int(int(f,'x'));
        doub_integral = char(doub_integral);       
		v = get(handles.checkbox4,'Value');
            if v == 1
            set(handles.text11, 'String', doub_integral);
            else
            set(handles.text11, 'String', '');
            end
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        doub_der_answer = str2sym(get(handles.edit3,'String'));
        doub_der = diff(diff(f,'x'));
        syms x
        x = 1:10;
        guess = eval(doub_der_answer);
        actual = eval(doub_der);
            if guess == actual
                set(hObject,'BackgroundColor','green');
                [s,fs] = audioread('app.wav');
                sound(s,fs)
            else
                set(hObject,'BackgroundColor','red');
                [s,fs] = audioread('buzz.wav');
                sound(s,fs)
            end
	case 2	% User Picked 2nd Item on Menu
        doub_integral_answer = str2sym(get(handles.edit3,'String'));  
        doub_integral = int(int(f,'x'));
        syms x
        x = 1:10;
        guess = eval(doub_integral_answer);
        actual = eval(doub_integral);
            if guess == actual
                set(hObject,'BackgroundColor','green');
                [s,fs] = audioread('app.wav');
                sound(s,fs)
            else
                set(hObject,'BackgroundColor','red');
                [s,fs] = audioread('buzz.wav');
                sound(s,fs)
            end
end

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


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        set(handles.edit3,'BackgroundColor','white');
        set(handles.edit4,'BackgroundColor','white');
        set(handles.text4, 'String', 'Function');
        set(handles.text5, 'String', 'First Derivative');
        set(handles.text6, 'String', 'Second Derivative');
        set(handles.text18, 'String', '');
        set(handles.text19, 'String', '');
		set(handles.edit1, 'String', '');
        set(handles.edit3, 'String', '');
        set(handles.edit4, 'String', '');
        set(handles.text10, 'String', '');
        set(handles.text11, 'String', '');
        set(handles.checkbox3, 'Value', 0);
        set(handles.checkbox4, 'Value', 0);
        set(handles.checkbox5, 'Value', 0);
        set(handles.checkbox6, 'Value', 0);
        set(handles.checkbox7, 'Value', 0);
        axes(handles.axes1); cla;
        axes(handles.axes2); cla;
        axes(handles.axes3); cla;
	case 2	% User Picked 2nd Item on Menu
        set(handles.edit3,'BackgroundColor','white');
        set(handles.edit4,'BackgroundColor','white');
        set(handles.text4, 'String', 'Function');
        set(handles.text5, 'String', 'First Anti-Derivative');
        set(handles.text6, 'String', 'Second Anti-Derivative');
        set(handles.text18, 'String', '+ C');
        set(handles.text19, 'String', '+ C');        
        set(handles.edit1, 'String', '');
        set(handles.edit3, 'String', '');
        set(handles.edit4, 'String', '');
        set(handles.text10, 'String', '');
        set(handles.text11, 'String', '');
        set(handles.checkbox3, 'Value', 0);
        set(handles.checkbox4, 'Value', 0);
        set(handles.checkbox5, 'Value', 0);
        set(handles.checkbox6, 'Value', 0);
        set(handles.checkbox7, 'Value', 0);
        axes(handles.axes1); cla;
        axes(handles.axes2); cla;
        axes(handles.axes3); cla;
end 

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        der = diff(f,'x');
        v = get(handles.checkbox5,'Value');
            if v == 1
                axes(handles.axes2);
                fplot(der);
            else
                axes(handles.axes2);
                cla;       
            end
	case 2	% User Picked 2nd Item on Menu
        integral = int(f,'x');       
		v = get(handles.checkbox5,'Value');
            if v == 1
                axes(handles.axes2);
                fplot(integral);
            else
                axes(handles.axes2);
                cla;       
            end
end

% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        doub_der = diff(diff(f,'x'));
        v = get(handles.checkbox6,'Value');
            if v == 1
                axes(handles.axes3);
                fplot(doub_der);
            else
                axes(handles.axes3);
                cla;       
            end
	case 2	% User Picked 2nd Item on Menu
        doub_integral = int(int(f,'x'));       
		v = get(handles.checkbox6,'Value');
            if v == 1
                axes(handles.axes3);
                fplot(doub_integral);
            else
                axes(handles.axes3);
                cla;       
            end
end

% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7
f = str2sym(get(handles.edit1,'String'));
v = get(handles.checkbox7,'Value');
if v == 1
    axes(handles.axes1);
    fplot(f);
else
    axes(handles.axes1);
    cla; 
end


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
f = str2sym(get(handles.edit1,'String'));
choice = get(handles.popupmenu3,'Value');  
switch choice
	case 1   % User Picked First Item on Menu
        der_answer = str2sym(get(handles.edit4,'String'));  
        der = diff(f,'x');
        syms x
        x = 1:10;
        guess = eval(der_answer);
        actual = eval(der);
            if guess == actual
                set(hObject,'BackgroundColor','green');
                [s,fs] = audioread('app.wav');
                sound(s,fs)
            else
                set(hObject,'BackgroundColor','red');
                [s,fs] = audioread('buzz.wav');
                sound(s,fs)
            end
	case 2	% User Picked 2nd Item on Menu
        integral_answer = str2sym(get(handles.edit4,'String'));  
        integral = int(f,'x');
        syms x
        x = 1:10;
        guess = eval(integral_answer);
        actual = eval(integral);
            if guess == actual
                set(hObject,'BackgroundColor','green');
                [s,fs] = audioread('app.wav');
                sound(s,fs)
            else
                set(hObject,'BackgroundColor','red');
                [s,fs] = audioread('buzz.wav');
                sound(s,fs)
            end
end

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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit3,'BackgroundColor','white');
set(handles.edit4,'BackgroundColor','white');
set(handles.edit1, 'String', '');
set(handles.edit3, 'String', '');
set(handles.edit4, 'String', '');
set(handles.text10, 'String', '');
set(handles.text11, 'String', '');
set(handles.checkbox3, 'Value', 0);
set(handles.checkbox4, 'Value', 0);
set(handles.checkbox5, 'Value', 0);
set(handles.checkbox6, 'Value', 0);
set(handles.checkbox7, 'Value', 0);
axes(handles.axes1); cla;
axes(handles.axes2); cla;
axes(handles.axes3); cla;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
instructions = msgbox({'The use of this program is to learn and practice integrals and derivatives. This is accomplished by entering a function and typing in answers to see if you''re right. Below are specific instructions. Enjoy.'; 
                       '';
                       '1. Use the dropdown menu to select between Derivatives and Integrals';
                       '2. Enter the function in terms of x using +, -, *,  /, and ^';
                       '3. Press the "Enter" key';
                       '4. Enter your answers in the boxes';
                       '5. Press "Enter"';
                       '6. If right, the box will turn green. If not, it will turn red.';
                       '7. Use the "Show Answer" and "Show Graph" buttons to see the solutions';
                       '8. Use the "Reset All" button to clear all values and start over'
                       '';
                       'Example Functions:';
                       'cos(x), sin(x), 2*x, x^2+8*x-4';
                       '';
                       'Functions That Don''t Work:';
                       '2x, 9sin(x), sin(9x)'},'Instructions');
