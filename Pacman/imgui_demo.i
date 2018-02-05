#line 1 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"











#line 13 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"

#line 1 "c:\\biblioteki\\imgui-sfml\\imgui.h"








#pragma once


#line 1 "c:\\biblioteki\\imgui-sfml\\imconfig.h"






#pragma once


















































#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"




























namespace sf
{





template <typename T>
class Vector2
{
public:

    
    
    
    
    
    
    Vector2();

    
    
    
    
    
    
    
    Vector2(T X, T Y);

    
    
    
    
    
    
    
    
    
    
    
    template <typename U>
    explicit Vector2(const Vector2<U>& vector);

    
    
    
    T x; 
    T y; 
};










template <typename T>
Vector2<T> operator -(const Vector2<T>& right);














template <typename T>
Vector2<T>& operator +=(Vector2<T>& left, const Vector2<T>& right);














template <typename T>
Vector2<T>& operator -=(Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator +(const Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator -(const Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator *(const Vector2<T>& left, T right);











template <typename T>
Vector2<T> operator *(T left, const Vector2<T>& right);














template <typename T>
Vector2<T>& operator *=(Vector2<T>& left, T right);











template <typename T>
Vector2<T> operator /(const Vector2<T>& left, T right);














template <typename T>
Vector2<T>& operator /=(Vector2<T>& left, T right);













template <typename T>
bool operator ==(const Vector2<T>& left, const Vector2<T>& right);













template <typename T>
bool operator !=(const Vector2<T>& left, const Vector2<T>& right);

#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.inl"


























template <typename T>
inline Vector2<T>::Vector2() :
x(0),
y(0)
{

}



template <typename T>
inline Vector2<T>::Vector2(T X, T Y) :
x(X),
y(Y)
{

}



template <typename T>
template <typename U>
inline Vector2<T>::Vector2(const Vector2<U>& vector) :
x(static_cast<T>(vector.x)),
y(static_cast<T>(vector.y))
{
}



template <typename T>
inline Vector2<T> operator -(const Vector2<T>& right)
{
    return Vector2<T>(-right.x, -right.y);
}



template <typename T>
inline Vector2<T>& operator +=(Vector2<T>& left, const Vector2<T>& right)
{
    left.x += right.x;
    left.y += right.y;

    return left;
}



template <typename T>
inline Vector2<T>& operator -=(Vector2<T>& left, const Vector2<T>& right)
{
    left.x -= right.x;
    left.y -= right.y;

    return left;
}



template <typename T>
inline Vector2<T> operator +(const Vector2<T>& left, const Vector2<T>& right)
{
    return Vector2<T>(left.x + right.x, left.y + right.y);
}



template <typename T>
inline Vector2<T> operator -(const Vector2<T>& left, const Vector2<T>& right)
{
    return Vector2<T>(left.x - right.x, left.y - right.y);
}



template <typename T>
inline Vector2<T> operator *(const Vector2<T>& left, T right)
{
    return Vector2<T>(left.x * right, left.y * right);
}



template <typename T>
inline Vector2<T> operator *(T left, const Vector2<T>& right)
{
    return Vector2<T>(right.x * left, right.y * left);
}



template <typename T>
inline Vector2<T>& operator *=(Vector2<T>& left, T right)
{
    left.x *= right;
    left.y *= right;

    return left;
}



template <typename T>
inline Vector2<T> operator /(const Vector2<T>& left, T right)
{
    return Vector2<T>(left.x / right, left.y / right);
}



template <typename T>
inline Vector2<T>& operator /=(Vector2<T>& left, T right)
{
    left.x /= right;
    left.y /= right;

    return left;
}



template <typename T>
inline bool operator ==(const Vector2<T>& left, const Vector2<T>& right)
{
    return (left.x == right.x) && (left.y == right.y);
}



template <typename T>
inline bool operator !=(const Vector2<T>& left, const Vector2<T>& right)
{
    return (left.x != right.x) || (left.y != right.y);
}
#line 251 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"


typedef Vector2<int>          Vector2i;
typedef Vector2<unsigned int> Vector2u;
typedef Vector2<float>        Vector2f;

} 


#line 261 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"









































#line 59 "c:\\biblioteki\\imgui-sfml\\imconfig.h"
#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"






























#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"






























#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"










































    
    
    
        
    #line 48 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"





















































#line 102 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







    

#line 112 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







    

        
        
        

        
        

            #pragma warning(disable: 4251)

        #line 131 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

    
















#line 150 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







#line 158 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"


















#line 177 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

    
    
    
    













#line 196 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"





namespace sf
{
    
    
    

    
    typedef signed   char Int8;
    typedef unsigned char Uint8;

    
    typedef signed   short Int16;
    typedef unsigned short Uint16;

    
    typedef signed   int Int32;
    typedef unsigned int Uint32;

    
    
        typedef signed   __int64 Int64;
        typedef unsigned __int64 Uint64;
    


#line 227 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

} 


#line 232 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"
#line 32 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"









#line 42 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"

    

#line 46 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"


#line 49 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"
#line 32 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"


namespace sf
{




class __declspec(dllimport) Color
{
public:

    
    
    
    
    
    
    
    Color();

    
    
    
    
    
    
    
    
    
    Color(Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha = 255);

    
    
    
    
    
    
    explicit Color(Uint32 color);

    
    
    
    
    
    
    Uint32 toInteger() const;

    
    
    
    static const Color Black;       
    static const Color White;       
    static const Color Red;         
    static const Color Green;       
    static const Color Blue;        
    static const Color Yellow;      
    static const Color Magenta;     
    static const Color Cyan;        
    static const Color Transparent; 

    
    
    
    Uint8 r; 
    Uint8 g; 
    Uint8 b; 
    Uint8 a; 
};













__declspec(dllimport) bool operator ==(const Color& left, const Color& right);













__declspec(dllimport) bool operator !=(const Color& left, const Color& right);














__declspec(dllimport) Color operator +(const Color& left, const Color& right);














__declspec(dllimport) Color operator -(const Color& left, const Color& right);
















__declspec(dllimport) Color operator *(const Color& left, const Color& right);















__declspec(dllimport) Color& operator +=(Color& left, const Color& right);















__declspec(dllimport) Color& operator -=(Color& left, const Color& right);

















__declspec(dllimport) Color& operator *=(Color& left, const Color& right);

} 


#line 231 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"













































#line 60 "c:\\biblioteki\\imgui-sfml\\imconfig.h"
























#line 13 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 14 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"








#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"







#pragma once

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"





















    
#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






    
    

#line 34 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
            
        

#line 39 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    #line 40 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 41 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"













#pragma once







































































































































#line 151 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



#line 155 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





























#line 185 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"


#line 188 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 190 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





#line 196 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



#line 200 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 207 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"











#line 219 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"








#line 228 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 229 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"































































































































































































































































































































































































































































































#pragma region Input Buffer SAL 1 compatibility macros



























































































































































































































































































































































































































































































































































































































































































































































































#pragma endregion Input Buffer SAL 1 compatibility macros

















































































#line 1555 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






























#line 1586 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
























#line 1611 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"












#line 1624 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






































#line 1663 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"















































































































#line 1775 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






































































































#line 1878 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"








































































































































































#line 2047 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





































































































#line 2149 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



















































































































































































































#line 2361 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
extern "C" {




#line 2367 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



































































































































































































































#line 2595 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    

    
    

#line 2634 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"









































































































































































































































#line 2868 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"









#line 2878 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"


    
    
#line 2883 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 2890 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 2891 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 2898 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 2899 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"











#line 2911 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

































#line 2945 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






















}
#line 2969 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


















#pragma once


extern "C" {
#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"
















































































































































































































































#line 265 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"



#line 269 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


















































































#line 352 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


}
#line 356 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"

#line 358 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"
#line 2971 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 46 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"










#pragma once



#pragma pack(push, 8)


extern "C" {
#line 20 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"



#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    
    


        typedef unsigned int uintptr_t;
    #line 32 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
#line 33 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    
    


        typedef char* va_list;
    #line 41 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
#line 42 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    


#line 48 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"





#line 54 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"



#line 58 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
    
    
#line 61 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"











#line 73 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"

    

    
    
    










































#line 122 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


} 
#line 126 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    extern "C++"
    {
        template <typename _Ty>
        struct __vcrt_va_list_is_reference
        {
            enum : bool { __the_value = false };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        void __vcrt_va_start_verify_argument_type() throw()
        {
            static_assert(!__vcrt_va_list_is_reference<_Ty>::__the_value, "va_start argument must not have reference type and must not be parenthesized");
        }
    } 

    





#line 162 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"

#pragma pack(pop)
#line 47 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






    



    





















#line 80 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

__pragma(pack(push, 8)) extern "C" {




    


        
    #line 91 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 92 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


















    

#line 113 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

#line 115 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
    #line 117 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 118 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    

#line 123 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
    #line 125 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 126 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"





#line 132 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
    
#line 135 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




    
#line 141 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"








    


#line 153 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 157 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
#line 159 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




    
#line 165 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
        
    

#line 173 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 174 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










    typedef unsigned int     size_t;
    typedef int              ptrdiff_t;
    typedef int              intptr_t;
#line 188 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    typedef bool  __vcrt_bool;






#line 198 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



    
#line 203 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
#line 207 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
#line 211 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"








    
        
    

#line 224 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 225 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 229 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
#line 231 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    extern "C++"
    {
        template <typename _CountofType, size_t _SizeOfArray>
        char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

        
    }


#line 243 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






#line 250 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
    





#line 261 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 262 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 266 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
    


#line 274 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 275 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    void __cdecl __security_init_cookie(void);

    
        void __fastcall __security_check_cookie(  uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(void);
    


#line 286 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 287 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

extern uintptr_t __security_cookie;


    
    
    
#line 295 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

} __pragma(pack(pop))

#line 299 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 11 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

__pragma(pack(push, 8)) extern "C" {









    

#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    

#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"




    
#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    

#line 41 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    

#line 45 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 46 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 50 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 52 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





#line 64 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 66 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



    


#line 73 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 79 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"













    


        
    #line 97 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 98 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 102 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 114 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 116 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









extern "C++"
{
    template<bool _Enable, typename _Ty>
    struct _CrtEnableIf;

    template<typename _Ty>
    struct _CrtEnableIf<true, _Ty>
    {
        typedef _Ty _Type;
    };
}
#line 137 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    typedef bool  __crt_bool;






#line 147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"










    
#line 159 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



















    

#line 181 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    #line 183 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 188 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 192 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









    











        
    #line 215 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 216 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 220 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
        
    

#line 227 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 228 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
















    __declspec(dllimport) void __cdecl _invalid_parameter(
          wchar_t const*,
          wchar_t const*,
          wchar_t const*,
                unsigned int,
                uintptr_t
        );
#line 252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

__declspec(dllimport) void __cdecl _invalid_parameter_noinfo(void);
__declspec(dllimport) __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);

__declspec(noreturn)
__declspec(dllimport) void __cdecl _invoke_watson(
      wchar_t const* _Expression,
      wchar_t const* _FunctionName,
      wchar_t const* _FileName,
            unsigned int _LineNo,
            uintptr_t _Reserved);


    
        

    













#line 283 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 284 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
















#line 301 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        


    #line 310 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 311 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









    






        
    #line 329 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 330 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        
    #line 337 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 342 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"













#line 356 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"















#line 372 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





    
#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 383 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    

#line 388 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 389 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        


            
        #line 399 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    #line 400 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 401 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 405 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





#line 411 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        



    #line 421 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
        
    



#line 431 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
        
        
    



#line 441 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
              
        

#line 448 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    



#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
    



#line 461 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
    



#line 469 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 470 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 474 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"








typedef int                           errno_t;
typedef unsigned short                wint_t;
typedef unsigned short                wctype_t;
typedef long                          __time32_t;
typedef __int64                       __time64_t;

typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
      int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;

typedef struct __crt_locale_pointers
{
    struct __crt_locale_data*    locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;

typedef __crt_locale_pointers* _locale_t;

typedef struct _Mbstatet
{ 
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;

typedef _Mbstatet mbstate_t;



#line 514 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 518 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        typedef __time64_t time_t;
    #line 525 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



    
#line 531 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    typedef size_t rsize_t;
#line 535 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"










    

        










        










        










        










        










        










        










        










        










        















        















        
















    














#line 711 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 712 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"












































































    





































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1787 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

        
        
        
        

        

            


            


            


            


            


            


            


            


            



            



            


            


            


            


            


            


            


            


            


            


            



            



            



            


            



            




            

            




            

            




            

            




            

            




            

            




            

            




            

            




            

        











































#line 1977 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    #line 1978 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 1979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"

__pragma(pack(push, 8)) extern "C" {




    


        


            
        #line 27 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
    #line 28 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"



















    
        
            
        

#line 54 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
    

#line 57 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"






















































































































































    





#line 215 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"











__declspec(dllimport) unsigned int __cdecl _clearfp(void);

#pragma warning(push)
#pragma warning(disable: 4141)

 
__declspec(dllimport) unsigned int __cdecl _controlfp(
      unsigned int _NewValue,
      unsigned int _Mask
    );

#pragma warning(pop)


__declspec(dllimport) void __cdecl _set_controlfp(
      unsigned int _NewValue,
      unsigned int _Mask
    );


__declspec(dllimport) errno_t __cdecl _controlfp_s(
      unsigned int* _CurrentState,
           unsigned int  _NewValue,
           unsigned int  _Mask
    );


__declspec(dllimport) unsigned int __cdecl _statusfp(void);


__declspec(dllimport) void __cdecl _fpreset(void);



    
    __declspec(dllimport) void __cdecl _statusfp2(
          unsigned int* _X86Status,
          unsigned int* _SSE2Status
        );

#line 267 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"





__declspec(dllimport) unsigned int __cdecl _control87(
      unsigned int _NewValue,
      unsigned int _Mask
    );


    
    __declspec(dllimport) int __cdecl __control87_2(
               unsigned int  _NewValue,
               unsigned int  _Mask,
          unsigned int* _X86ControlWord,
          unsigned int* _Sse2ControlWord
        );
#line 286 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"


 
__declspec(dllimport) int* __cdecl __fpecode(void);



 
__declspec(dllimport) int __cdecl __fpe_flt_rounds(void);












  __declspec(dllimport) double __cdecl _copysign(  double _Number,   double _Sign);
  __declspec(dllimport) double __cdecl _chgsign(  double _X);
  __declspec(dllimport) double __cdecl _scalb(  double _X,   long _Y);
  __declspec(dllimport) double __cdecl _logb(  double _X);
  __declspec(dllimport) double __cdecl _nextafter(  double _X,   double _Y);
  __declspec(dllimport) int    __cdecl _finite(  double _X);
  __declspec(dllimport) int    __cdecl _isnan(  double _X);
  __declspec(dllimport) int    __cdecl _fpclass(  double _X);














    
    
    

    
    __declspec(dllimport) void __cdecl fpreset(void);

    
    

    
    

    
    
    

    
    
    
    
    
    
    

    
    
    

    
    
    
    
    

    
    
    
    

    

    
    
    
    
    
    

    
    
    
    

    
    
    
    
    
    

    
    
    
    

    

#line 398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"



} __pragma(pack(pop))
#line 15 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdarg.h"







#pragma once


#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 12 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdarg.h"

__pragma(pack(push, 8)) extern "C" {










} __pragma(pack(pop))
#line 16 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {




    namespace std
    {
        typedef decltype(__nullptr) nullptr_t;
    }

    using ::std::nullptr_t;
#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"





    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

#line 37 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"









#line 47 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"
    
#line 49 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"

__declspec(dllimport) extern unsigned long  __cdecl __threadid(void);

__declspec(dllimport) extern uintptr_t __cdecl __threadhandle(void);



} __pragma(pack(pop))
#line 17 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"










#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"







#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {




    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

    __declspec(dllimport) unsigned long* __cdecl __doserrno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_doserrno(  unsigned long _Value);
    __declspec(dllimport) errno_t __cdecl _get_doserrno(  unsigned long * _Value);
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"










































    
    
    
    
    
#line 78 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"






    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#line 126 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"



} __pragma(pack(pop))
#line 12 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"







#pragma once

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 11 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"



__pragma(pack(push, 8)) extern "C" {



 
 void const* __cdecl memchr(
      void const* _Buf,
                                 int         _Val,
                                 size_t      _MaxCount
    );

 
int __cdecl memcmp(
      void const* _Buf1,
      void const* _Buf2,
                         size_t      _Size
    );


 

#line 40 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
void* __cdecl memcpy(
      void* _Dst,
            void const* _Src,
                               size_t      _Size
    );


 void* __cdecl memmove(
      void*       _Dst,
            void const* _Src,
                                   size_t      _Size
    );

 

#line 60 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
void* __cdecl memset(
      void*  _Dst,
                               int    _Val,
                               size_t _Size
    );

 
 char const* __cdecl strchr(
      char const* _Str,
        int         _Val
    );

 
 char const* __cdecl strrchr(
      char const* _Str,
        int         _Ch
    );

   
 char const* __cdecl strstr(
      char const* _Str,
      char const* _SubStr
    );

 

 wchar_t const* __cdecl wcschr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );

 
 wchar_t const* __cdecl wcsrchr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );

   

 wchar_t const* __cdecl wcsstr(
      wchar_t const* _Str,
      wchar_t const* _SubStr
    );



} __pragma(pack(pop))

#line 109 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"

__pragma(pack(push, 8)) extern "C" {


    
#line 19 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"














     
    
    static __inline errno_t __cdecl memcpy_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        if (_Source == 0 || _DestinationSize < _SourceSize)
        {
            memset(_Destination, 0, _DestinationSize);

            { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
            { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };

            
            return 22;
        }

        memcpy(_Destination, _Source, _SourceSize);
        return 0;
    }

    
    static __inline errno_t __cdecl memmove_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };

        memmove(_Destination, _Source, _SourceSize);
        return 0;
    }

#line 85 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"



} __pragma(pack(pop))
#line 15 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"




__pragma(pack(push, 8)) extern "C" {



 
__declspec(dllimport) int __cdecl _memicmp(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size
    );

 
__declspec(dllimport) int __cdecl _memicmp_l(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size,
                         _locale_t   _Locale
    );





    












#line 56 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"

    












#line 71 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"

#line 73 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"





    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memccpy" ". See online help for details."))
    __declspec(dllimport) void* __cdecl memccpy(
          void*       _Dst,
            void const* _Src,
                                   int         _Val,
                                   size_t      _Size
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl memicmp(
          void const* _Buf1,
          void const* _Buf2,
                                 size_t      _Size
        );

#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"





    extern "C++"  
    inline void* __cdecl memchr(
          void*  _Pv,
                              int    _C,
                              size_t _N
        )
    {
        void const* const _Pvc = _Pv;
        return const_cast<void*>(memchr(_Pvc, _C, _N));
    }

#line 111 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"



} __pragma(pack(pop))

#line 117 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"








#pragma once






__pragma(pack(push, 8)) extern "C" {










    
    __declspec(dllimport) errno_t __cdecl wcscat_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl wcscpy_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl wcsncat_s(
          wchar_t*       _Destination,
                                     rsize_t        _SizeInWords,
               wchar_t const* _Source,
                                     rsize_t        _MaxCount
        );

    
    __declspec(dllimport) errno_t __cdecl wcsncpy_s(
          wchar_t*       _Destination,
                                  rsize_t        _SizeInWords,
            wchar_t const* _Source,
                                  rsize_t        _MaxCount
        );

     
    __declspec(dllimport) wchar_t* __cdecl wcstok_s(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
            wchar_t**      _Context
        );

#line 65 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"











#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wcsdup(
      wchar_t const* _String
    );



#line 86 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source) throw() { return wcscat_s(_Destination, _Size, _Source); } }
#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
     __declspec(dllimport) wchar_t* __cdecl wcscat( wchar_t *_Destination,  wchar_t const* _Source);
#line 105 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#pragma warning(pop)
#line 107 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) int __cdecl wcscmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source) throw() { return wcscpy_s(_Destination, _Size, _Source); } }
#line 119 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) wchar_t* __cdecl wcscpy( wchar_t *_Destination,  wchar_t const* _Source);
#line 128 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#pragma warning(pop)

 
__declspec(dllimport) size_t __cdecl wcscspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );

 
__declspec(dllimport) size_t __cdecl wcslen(
      wchar_t const* _String
    );

 

#line 146 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

#line 150 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) size_t __cdecl wcsnlen(
      wchar_t const* _Source,
                            size_t         _MaxCount
    );



     
    
#line 162 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
    
#line 166 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
    static __inline size_t __cdecl wcsnlen_s(
          wchar_t const* _Source,
                                size_t         _MaxCount
        )
    {
        return (_Source == 0) ? 0 : wcsnlen(_Source, _MaxCount);
    }

#line 175 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s(  wchar_t (&_Destination)[_Size],   wchar_t const* _Source,   size_t _Count) throw() { return wcsncat_s(_Destination, _Size, _Source, _Count); } }
#line 182 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl wcsncat(  wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
#line 190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) int __cdecl wcsncmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source,   size_t _Count) throw() { return wcsncpy_s(_Destination, _Size, _Source, _Count); } }
#line 204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl wcsncpy(    wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
#line 212 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) wchar_t const* __cdecl wcspbrk(
      wchar_t const* _String,
      wchar_t const* _Control
    );

 
__declspec(dllimport) size_t __cdecl wcsspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );

  
__declspec(dllimport) wchar_t* __cdecl wcstok(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
        wchar_t**      _Context
    );



    

#line 237 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
        



    #line 242 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    #pragma warning(push)
    #pragma warning(disable: 4141 4996) 

      
    static __inline wchar_t* __cdecl _wcstok(
          wchar_t*       const _String,
                 wchar_t const* const _Delimiter
        )
    {
        return wcstok(_String, _Delimiter, 0);
    }

    

#line 258 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    
        extern "C++"   __declspec(deprecated("wcstok has been changed to conform with the ISO C standard, " "adding an extra context parameter. To use the legacy Microsoft " "wcstok, define _CRT_NON_CONFORMING_WCSTOK."))
        inline wchar_t* __cdecl wcstok(
              wchar_t*       _String,
                     wchar_t const* _Delimiter
            ) throw()
        {
            return wcstok(_String, _Delimiter, 0);
        }
    #line 269 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    #pragma warning(pop)

#line 273 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



 
  
__declspec(dllimport) wchar_t* __cdecl _wcserror(
      int _ErrorNumber
    );


__declspec(dllimport) errno_t __cdecl _wcserror_s(
      wchar_t* _Buffer,
                                  size_t   _SizeInWords,
                                  int      _ErrorNumber
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(wchar_t (&_Buffer)[_Size],   int _Error) throw() { return _wcserror_s(_Buffer, _Size, _Error); } }
#line 294 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
 
  
__declspec(dllimport) wchar_t* __cdecl __wcserror(
      wchar_t const* _String
    );

 __declspec(dllimport) errno_t __cdecl __wcserror_s(
      wchar_t*       _Buffer,
                                  size_t         _SizeInWords,
                                wchar_t const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(wchar_t (&_Buffer)[_Size],   wchar_t const* _ErrorMessage) throw() { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }
#line 313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

  __declspec(dllimport) int __cdecl _wcsicmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

  __declspec(dllimport) int __cdecl _wcsicmp_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

  __declspec(dllimport) int __cdecl _wcsnicmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

  __declspec(dllimport) int __cdecl _wcsnicmp_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );

 __declspec(dllimport) errno_t __cdecl _wcsnset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value,
                                 size_t   _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s(  wchar_t (&_Destination)[_Size],   wchar_t _Value,   size_t _MaxCount) throw() { return _wcsnset_s(_Destination, _Size, _Value, _MaxCount); } }
#line 351 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsnset(  wchar_t *_String,   wchar_t _Value,   size_t _MaxCount);
#line 359 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

__declspec(dllimport) wchar_t* __cdecl _wcsrev(
      wchar_t* _String
    );

 __declspec(dllimport) errno_t __cdecl _wcsset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s(  wchar_t (&_String)[_Size],   wchar_t _Value) throw() { return _wcsset_s(_String, _Size, _Value); } }
#line 375 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsset(  wchar_t *_String,   wchar_t _Value);
#line 382 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) errno_t __cdecl _wcslwr_s(
      wchar_t* _String,
                                 size_t   _SizeInWords
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s(  wchar_t (&_String)[_Size]) throw() { return _wcslwr_s(_String, _Size); } }
#line 392 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcslwr( wchar_t *_String);
#line 397 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcslwr_s_l(
      wchar_t*  _String,
                                 size_t    _SizeInWords,
                             _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l(  wchar_t (&_String)[_Size],   _locale_t _Locale) throw() { return _wcslwr_s_l(_String, _Size, _Locale); } }
#line 410 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcslwr_l(  wchar_t *_String,   _locale_t _Locale);
#line 417 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcsupr_s(
      wchar_t* _String,
                          size_t   _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s(  wchar_t (&_String)[_Size]) throw() { return _wcsupr_s(_String, _Size); } }
#line 428 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsupr( wchar_t *_String);
#line 433 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcsupr_s_l(
      wchar_t*  _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l(  wchar_t (&_String)[_Size],   _locale_t _Locale) throw() { return _wcsupr_s_l(_String, _Size, _Locale); } }
#line 446 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsupr_l(  wchar_t *_String,   _locale_t _Locale);
#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 

__declspec(dllimport) size_t __cdecl wcsxfrm(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount
    );

 

__declspec(dllimport) size_t __cdecl _wcsxfrm_l(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount,
                                       _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl wcscoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

 
__declspec(dllimport) int __cdecl _wcscoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsicoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

 
__declspec(dllimport) int __cdecl _wcsicoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsncoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

 
__declspec(dllimport) int __cdecl _wcsncoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsnicoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

 
__declspec(dllimport) int __cdecl _wcsnicoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );









extern "C++" {

     
    
    inline wchar_t* __cdecl wcschr(  wchar_t* _String, wchar_t _C)
    {
        return const_cast<wchar_t*>(wcschr(static_cast<wchar_t const*>(_String), _C));
    }

     
    inline wchar_t* __cdecl wcspbrk(  wchar_t* _String,   wchar_t const* _Control)
    {
        return const_cast<wchar_t*>(wcspbrk(static_cast<wchar_t const*>(_String), _Control));
    }

     
    inline wchar_t* __cdecl wcsrchr(  wchar_t* _String,   wchar_t _C)
    {
        return const_cast<wchar_t*>(wcsrchr(static_cast<wchar_t const*>(_String), _C));
    }

       
    
    inline wchar_t* __cdecl wcsstr(  wchar_t* _String,   wchar_t const*_SubStr)
    {
        return const_cast<wchar_t*>(wcsstr(static_cast<wchar_t const*>(_String), _SubStr));
    }

}
#line 565 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"









    


#line 578 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsdup" ". See online help for details."))
    __declspec(dllimport) wchar_t* __cdecl wcsdup(
          wchar_t const* _String
        );

    

#line 587 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    
    

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicmp(
          wchar_t const* _String1,
          wchar_t const* _String2
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsnicmp(
          wchar_t const* _String1,
          wchar_t const* _String2,
                                size_t         _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnset" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsnset(
          wchar_t* _String,
                                  wchar_t  _Value,
                                  size_t   _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsrev" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsrev(
          wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsset" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsset(
          wchar_t* _String,
               wchar_t  _Value
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcslwr" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcslwr(
          wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsupr" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsupr(
          wchar_t* _String
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicoll" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicoll(
          wchar_t const* _String1,
          wchar_t const* _String2
        );

#line 644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



} __pragma(pack(pop))

#line 650 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"




__pragma(pack(push, 8)) extern "C" {







    
    __declspec(dllimport) errno_t __cdecl strcpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
                                char const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl strcat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
                                   char const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl strerror_s(
          char*  _Buffer,
                                  size_t _SizeInBytes,
                                  int    _ErrorNumber);

    
    __declspec(dllimport) errno_t __cdecl strncat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
               char const* _Source,
                                     rsize_t     _MaxCount
        );

    
    __declspec(dllimport) errno_t __cdecl strncpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
            char const* _Source,
                                  rsize_t     _MaxCount
        );

     
    __declspec(dllimport) char*  __cdecl strtok_s(
                          char*       _String,
                                 char const* _Delimiter,
            char**      _Context
        );

#line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

__declspec(dllimport) void* __cdecl _memccpy(
      void*       _Dst,
                                   void const* _Src,
                                   int         _Val,
                                   size_t      _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s(char (&_Destination)[_Size],   char const* _Source) throw() { return strcat_s(_Destination, _Size, _Source); } }
#line 83 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"



#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
      char* __cdecl strcat( char *_Destination,  char const* _Source);
#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#pragma warning(pop)

#line 97 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
int __cdecl strcmp(
      char const* _Str1,
      char const* _Str2
    );

 
__declspec(dllimport) int __cdecl _strcmpi(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl strcoll(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _strcoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s(  char (&_Destination)[_Size],   char const* _Source) throw() { return strcpy_s(_Destination, _Size, _Source); } }
#line 128 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
  char* __cdecl strcpy( char *_Destination,  char const* _Source);
#line 137 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#pragma warning(pop)

 
__declspec(dllimport) size_t __cdecl strcspn(
      char const* _Str,
      char const* _Control
    );




#line 149 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) __declspec(allocator) char* __cdecl _strdup(
      char const* _Source
    );



#line 158 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
 
  
__declspec(dllimport) char*  __cdecl _strerror(
      char const* _ErrorMessage
    );


__declspec(dllimport) errno_t __cdecl _strerror_s(
      char*       _Buffer,
                              size_t      _SizeInBytes,
                        char const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(char (&_Buffer)[_Size],   char const* _ErrorMessage) throw() { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }
#line 178 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
  
__declspec(dllimport) char* __cdecl strerror(
      int _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(char (&_Buffer)[_Size],   int _ErrorMessage) throw() { return strerror_s(_Buffer, _Size, _ErrorMessage); } }
#line 190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) int __cdecl _stricmp(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _stricoll(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _stricoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _stricmp_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

 
size_t __cdecl strlen(
      char const* _Str
    );


__declspec(dllimport) errno_t __cdecl _strlwr_s(
      char*  _String,
                          size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s(  char (&_String)[_Size]) throw() { return _strlwr_s(_String, _Size); } }
#line 232 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strlwr( char *_String);
#line 237 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strlwr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l(  char (&_String)[_Size],   _locale_t _Locale) throw() { return _strlwr_s_l(_String, _Size, _Locale); } }
#line 250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strlwr_l(  char *_String,   _locale_t _Locale);
#line 257 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s(  char (&_Destination)[_Size],   char const* _Source,   size_t _Count) throw() { return strncat_s(_Destination, _Size, _Source, _Count); } }
#line 264 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl strncat(  char *_Destination,   char const* _Source,   size_t _Count);
#line 272 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) int __cdecl strncmp(
      char const* _Str1,
      char const* _Str2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicmp(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicmp_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _strnicoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _strncoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strncoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

__declspec(dllimport) size_t __cdecl __strncnt(
      char const* _String,
                         size_t      _Count
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(char (&_Destination)[_Size],   char const* _Source,   size_t _Count) throw() { return strncpy_s(_Destination, _Size, _Source, _Count); } }
#line 336 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl strncpy(    char *_Destination,   char const* _Source,   size_t _Count);
#line 344 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 

#line 350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

#line 354 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
__declspec(dllimport) size_t __cdecl strnlen(
      char const* _String,
                            size_t      _MaxCount
    );



     
    
#line 366 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
    
#line 370 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
    static __inline size_t __cdecl strnlen_s(
          char const* _String,
                                size_t      _MaxCount
        )
    {
        return _String == 0 ? 0 : strnlen(_String, _MaxCount);
    }

#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strnset_s(
      char*  _String,
                                 size_t _SizeInBytes,
                                 int    _Value,
                                 size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s(  char (&_Destination)[_Size],   int _Value,   size_t _Count) throw() { return _strnset_s(_Destination, _Size, _Value, _Count); } }
#line 394 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strnset(  char *_Destination,   int _Value,   size_t _Count);
#line 402 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) char const* __cdecl strpbrk(
      char const* _Str,
      char const* _Control
    );

__declspec(dllimport) char* __cdecl _strrev(
      char* _Str
    );


__declspec(dllimport) errno_t __cdecl _strset_s(
      char*  _Destination,
                                     size_t _DestinationSize,
                                     int    _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s(  char (&_Destination)[_Size],   int _Value) throw() { return _strset_s(_Destination, _Size, _Value); } }
#line 425 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

  char* __cdecl _strset( char *_Destination,  int _Value);
#line 431 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) size_t __cdecl strspn(
      char const* _Str,
      char const* _Control
    );

  
__declspec(dllimport) char* __cdecl strtok(
      char*       _String,
             char const* _Delimiter
    );


__declspec(dllimport) errno_t __cdecl _strupr_s(
      char*  _String,
                          size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s(  char (&_String)[_Size]) throw() { return _strupr_s(_String, _Size); } }
#line 454 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strupr( char *_String);
#line 459 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strupr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l(  char (&_String)[_Size],   _locale_t _Locale) throw() { return _strupr_s_l(_String, _Size, _Locale); } }
#line 472 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strupr_l(  char *_String,   _locale_t _Locale);
#line 479 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 

__declspec(dllimport) size_t __cdecl strxfrm(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount
    );

 

__declspec(dllimport) size_t __cdecl _strxfrm_l(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount,
                                       _locale_t   _Locale
    );




extern "C++"
{
     
    inline char* __cdecl strchr(  char* const _String,   int const _Ch)
    {
        return const_cast<char*>(strchr(static_cast<char const*>(_String), _Ch));
    }

     
    inline char* __cdecl strpbrk(  char* const _String,   char const* const _Control)
    {
        return const_cast<char*>(strpbrk(static_cast<char const*>(_String), _Control));
    }

     
    inline char* __cdecl strrchr(  char* const _String,   int const _Ch)
    {
        return const_cast<char*>(strrchr(static_cast<char const*>(_String), _Ch));
    }

       
    inline char* __cdecl strstr(  char* const _String,   char const* const _SubString)
    {
        return const_cast<char*>(strstr(static_cast<char const*>(_String), _SubString));
    }
}
#line 527 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"





    


#line 536 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strdup" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strdup(
          char const* _String
        );

    

#line 545 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

    
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strcmpi" ". See online help for details."))
    __declspec(dllimport) int __cdecl strcmpi(
          char const* _String1,
          char const* _String2
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_stricmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl stricmp(
          char const* _String1,
          char const* _String2
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strlwr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strlwr(
          char* _String
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl strnicmp(
          char const* _String1,
          char const* _String2,
                                size_t      _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnset" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strnset(
          char*  _String,
                                  int    _Value,
                                  size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strrev" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strrev(
          char* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strset" ". See online help for details."))
    char* __cdecl strset(
          char* _String,
               int   _Value);

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strupr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strupr(
          char* _String
        );

#line 594 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"



} __pragma(pack(pop))

#line 600 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#line 18 "c:\\biblioteki\\imgui-sfml\\imgui.h"






#line 25 "c:\\biblioteki\\imgui-sfml\\imgui.h"



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"









#line 11 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"



__pragma(pack(push, 8)) extern "C" {











    __declspec(dllimport) void __cdecl _wassert(
          wchar_t const* _Message,
          wchar_t const* _File,
            unsigned       _Line
        );

    




#line 38 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"



} __pragma(pack(pop))
#line 29 "c:\\biblioteki\\imgui-sfml\\imgui.h"

#line 31 "c:\\biblioteki\\imgui-sfml\\imgui.h"




#line 36 "c:\\biblioteki\\imgui-sfml\\imgui.h"

#line 38 "c:\\biblioteki\\imgui-sfml\\imgui.h"




#line 43 "c:\\biblioteki\\imgui-sfml\\imgui.h"


struct ImDrawChannel;               
struct ImDrawCmd;                   
struct ImDrawData;                  
struct ImDrawList;                  
struct ImDrawVert;                  
struct ImFont;                      
struct ImFontAtlas;                 
struct ImFontConfig;                
struct ImColor;                     
struct ImGuiIO;                     
struct ImGuiOnceUponAFrame;         
struct ImGuiStorage;                
struct ImGuiStyle;                  
struct ImGuiTextFilter;             
struct ImGuiTextBuffer;             
struct ImGuiTextEditCallbackData;   
struct ImGuiSizeConstraintCallbackData;
struct ImGuiListClipper;            
struct ImGuiContext;                


typedef unsigned int ImU32;         
typedef unsigned int ImGuiID;       
typedef unsigned short ImWchar;     
typedef void* ImTextureID;          
typedef int ImGuiCol;               
typedef int ImGuiStyleVar;          
typedef int ImGuiKey;               
typedef int ImGuiColorEditMode;     
typedef int ImGuiMouseCursor;       
typedef int ImGuiWindowFlags;       
typedef int ImGuiSetCond;           
typedef int ImGuiInputTextFlags;    
typedef int ImGuiSelectableFlags;   
typedef int ImGuiTreeNodeFlags;     
typedef int (*ImGuiTextEditCallback)(ImGuiTextEditCallbackData *data);
typedef void (*ImGuiSizeConstraintCallback)(ImGuiSizeConstraintCallbackData* data);





struct ImVec2
{
    float x, y;
    ImVec2() { x = y = 0.0f; }
    ImVec2(float _x, float _y) { x = _x; y = _y; }

    template <typename T> ImVec2(const sf::Vector2<T>& v) { x = static_cast<float>(v.x); y = static_cast<float>(v.y); } template <typename T> operator sf::Vector2<T>() const { return sf::Vector2<T>(x, y); }
#line 95 "c:\\biblioteki\\imgui-sfml\\imgui.h"
};

struct ImVec4
{
    float x, y, z, w;
    ImVec4() { x = y = z = w = 0.0f; }
    ImVec4(float _x, float _y, float _z, float _w) { x = _x; y = _y; z = _z; w = _w; }

    ImVec4(const sf::Color & c) : ImVec4(c.r / 255.f, c.g / 255.f, c.b / 255.f, c.a / 255.f) { } operator sf::Color() const { return sf::Color( static_cast<sf::Uint8>(x * 255.f), static_cast<sf::Uint8>(y * 255.f), static_cast<sf::Uint8>(z * 255.f), static_cast<sf::Uint8>(w * 255.f)); }
#line 105 "c:\\biblioteki\\imgui-sfml\\imgui.h"
};



namespace ImGui
{
    
     ImGuiIO&      GetIO();
     ImGuiStyle&   GetStyle();
     ImDrawData*   GetDrawData();                              
     void          NewFrame();                                 
     void          Render();                                   
     void          Shutdown();
     void          ShowUserGuide();                            
     void          ShowStyleEditor(ImGuiStyle* ref = 0);    
     void          ShowTestWindow(bool* p_open = 0);        
     void          ShowMetricsWindow(bool* p_open = 0);     

    
     bool          Begin(const char* name, bool* p_open = 0, ImGuiWindowFlags flags = 0);                                                   
     bool          Begin(const char* name, bool* p_open, const ImVec2& size_on_first_use, float bg_alpha = -1.0f, ImGuiWindowFlags flags = 0); 
     void          End();                                                                                                                      
     bool          BeginChild(const char* str_id, const ImVec2& size = ImVec2(0,0), bool border = false, ImGuiWindowFlags extra_flags = 0);    
     bool          BeginChild(ImGuiID id, const ImVec2& size = ImVec2(0,0), bool border = false, ImGuiWindowFlags extra_flags = 0);            
     void          EndChild();
     ImVec2        GetContentRegionMax();                                              
     ImVec2        GetContentRegionAvail();                                            
     float         GetContentRegionAvailWidth();                                       
     ImVec2        GetWindowContentRegionMin();                                        
     ImVec2        GetWindowContentRegionMax();                                        
     float         GetWindowContentRegionWidth();                                      
     ImDrawList*   GetWindowDrawList();                                                
     ImVec2        GetWindowPos();                                                     
     ImVec2        GetWindowSize();                                                    
     float         GetWindowWidth();
     float         GetWindowHeight();
     bool          IsWindowCollapsed();
     void          SetWindowFontScale(float scale);                                    

     void          SetNextWindowPos(const ImVec2& pos, ImGuiSetCond cond = 0);         
     void          SetNextWindowPosCenter(ImGuiSetCond cond = 0);                      
     void          SetNextWindowSize(const ImVec2& size, ImGuiSetCond cond = 0);       
     void          SetNextWindowSizeConstraints(const ImVec2& size_min, const ImVec2& size_max, ImGuiSizeConstraintCallback custom_callback = 0, void* custom_callback_data = 0); 
     void          SetNextWindowContentSize(const ImVec2& size);                       
     void          SetNextWindowContentWidth(float width);                             
     void          SetNextWindowCollapsed(bool collapsed, ImGuiSetCond cond = 0);      
     void          SetNextWindowFocus();                                               
     void          SetWindowPos(const ImVec2& pos, ImGuiSetCond cond = 0);             
     void          SetWindowSize(const ImVec2& size, ImGuiSetCond cond = 0);           
     void          SetWindowCollapsed(bool collapsed, ImGuiSetCond cond = 0);          
     void          SetWindowFocus();                                                   
     void          SetWindowPos(const char* name, const ImVec2& pos, ImGuiSetCond cond = 0);      
     void          SetWindowSize(const char* name, const ImVec2& size, ImGuiSetCond cond = 0);    
     void          SetWindowCollapsed(const char* name, bool collapsed, ImGuiSetCond cond = 0);   
     void          SetWindowFocus(const char* name);                                              

     float         GetScrollX();                                                       
     float         GetScrollY();                                                       
     float         GetScrollMaxX();                                                    
     float         GetScrollMaxY();                                                    
     void          SetScrollX(float scroll_x);                                         
     void          SetScrollY(float scroll_y);                                         
     void          SetScrollHere(float center_y_ratio = 0.5f);                         
     void          SetScrollFromPosY(float pos_y, float center_y_ratio = 0.5f);        
     void          SetKeyboardFocusHere(int offset = 0);                               
     void          SetStateStorage(ImGuiStorage* tree);                                
     ImGuiStorage* GetStateStorage();

    
     void          PushFont(ImFont* font);                                             
     void          PopFont();
     void          PushStyleColor(ImGuiCol idx, const ImVec4& col);
     void          PopStyleColor(int count = 1);
     void          PushStyleVar(ImGuiStyleVar idx, float val);
     void          PushStyleVar(ImGuiStyleVar idx, const ImVec2& val);
     void          PopStyleVar(int count = 1);
     ImFont*       GetFont();                                                          
     float         GetFontSize();                                                      
     ImVec2        GetFontTexUvWhitePixel();                                           
     ImU32         GetColorU32(ImGuiCol idx, float alpha_mul = 1.0f);                  
     ImU32         GetColorU32(const ImVec4& col);                                     

    
     void          PushItemWidth(float item_width);                                    
     void          PopItemWidth();
     float         CalcItemWidth();                                                    
     void          PushTextWrapPos(float wrap_pos_x = 0.0f);                           
     void          PopTextWrapPos();
     void          PushAllowKeyboardFocus(bool v);                                     
     void          PopAllowKeyboardFocus();
     void          PushButtonRepeat(bool repeat);                                      
     void          PopButtonRepeat();

    
     void          Separator();                                                        
     void          SameLine(float pos_x = 0.0f, float spacing_w = -1.0f);              
     void          NewLine();                                                          
     void          Spacing();                                                          
     void          Dummy(const ImVec2& size);                                          
     void          Indent(float indent_w = 0.0f);                                      
     void          Unindent(float indent_w = 0.0f);                                    
     void          BeginGroup();                                                       
     void          EndGroup();
     ImVec2        GetCursorPos();                                                     
     float         GetCursorPosX();                                                    
     float         GetCursorPosY();                                                    
     void          SetCursorPos(const ImVec2& local_pos);                              
     void          SetCursorPosX(float x);                                             
     void          SetCursorPosY(float y);                                             
     ImVec2        GetCursorStartPos();                                                
     ImVec2        GetCursorScreenPos();                                               
     void          SetCursorScreenPos(const ImVec2& pos);                              
     void          AlignFirstTextHeightToWidgets();                                    
     float         GetTextLineHeight();                                                
     float         GetTextLineHeightWithSpacing();                                     
     float         GetItemsLineHeightWithSpacing();                                    

    
    
     void          Columns(int count = 1, const char* id = 0, bool border = true);  
     void          NextColumn();                                                       
     int           GetColumnIndex();                                                   
     float         GetColumnOffset(int column_index = -1);                             
     void          SetColumnOffset(int column_index, float offset_x);                  
     float         GetColumnWidth(int column_index = -1);                              
     int           GetColumnsCount();                                                  

    
    
    
     void          PushID(const char* str_id);                                         
     void          PushID(const char* str_id_begin, const char* str_id_end);
     void          PushID(const void* ptr_id);
     void          PushID(int int_id);
     void          PopID();
     ImGuiID       GetID(const char* str_id);                                          
     ImGuiID       GetID(const char* str_id_begin, const char* str_id_end);
     ImGuiID       GetID(const void* ptr_id);

    
     void          Text(const char* fmt, ...) ;
     void          TextV(const char* fmt, va_list args);
     void          TextColored(const ImVec4& col, const char* fmt, ...) ;  
     void          TextColoredV(const ImVec4& col, const char* fmt, va_list args);
     void          TextDisabled(const char* fmt, ...) ;                    
     void          TextDisabledV(const char* fmt, va_list args);
     void          TextWrapped(const char* fmt, ...) ;                     
     void          TextWrappedV(const char* fmt, va_list args);
     void          TextUnformatted(const char* text, const char* text_end = 0);         
     void          LabelText(const char* label, const char* fmt, ...) ;    
     void          LabelTextV(const char* label, const char* fmt, va_list args);
     void          Bullet();                                                               
     void          BulletText(const char* fmt, ...) ;                      
     void          BulletTextV(const char* fmt, va_list args);
     bool          Button(const char* label, const ImVec2& size = ImVec2(0,0));            
     bool          SmallButton(const char* label);                                         
     bool          InvisibleButton(const char* str_id, const ImVec2& size);
     void          Image(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0 = ImVec2(0,0), const ImVec2& uv1 = ImVec2(1,1), const ImVec4& tint_col = ImVec4(1,1,1,1), const ImVec4& border_col = ImVec4(0,0,0,0));
     bool          ImageButton(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0 = ImVec2(0,0),  const ImVec2& uv1 = ImVec2(1,1), int frame_padding = -1, const ImVec4& bg_col = ImVec4(0,0,0,0), const ImVec4& tint_col = ImVec4(1,1,1,1));    
     bool          Checkbox(const char* label, bool* v);
     bool          CheckboxFlags(const char* label, unsigned int* flags, unsigned int flags_value);
     bool          RadioButton(const char* label, bool active);
     bool          RadioButton(const char* label, int* v, int v_button);
     bool          Combo(const char* label, int* current_item, const char* const* items, int items_count, int height_in_items = -1);
     bool          Combo(const char* label, int* current_item, const char* items_separated_by_zeros, int height_in_items = -1);      
     bool          Combo(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items = -1);
     bool          ColorButton(const ImVec4& col, bool small_height = false, bool outline_border = true);
     bool          ColorEdit3(const char* label, float col[3]);                            
     bool          ColorEdit4(const char* label, float col[4], bool show_alpha = true);    
     void          ColorEditMode(ImGuiColorEditMode mode);                                 
     void          PlotLines(const char* label, const float* values, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0), int stride = sizeof(float));
     void          PlotLines(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0));
     void          PlotHistogram(const char* label, const float* values, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0), int stride = sizeof(float));
     void          PlotHistogram(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0));
     void          ProgressBar(float fraction, const ImVec2& size_arg = ImVec2(-1,0), const char* overlay = 0);

    
    
     bool          DragFloat(const char* label, float* v, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);     
     bool          DragFloat2(const char* label, float v[2], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloat3(const char* label, float v[3], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloat4(const char* label, float v[4], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", const char* display_format_max = 0, float power = 1.0f);
     bool          DragInt(const char* label, int* v, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");                                       
     bool          DragInt2(const char* label, int v[2], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragInt3(const char* label, int v[3], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragInt4(const char* label, int v[4], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f", const char* display_format_max = 0);

    
     bool          InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags = 0, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2& size = ImVec2(0,0), ImGuiInputTextFlags flags = 0, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputFloat(const char* label, float* v, float step = 0.0f, float step_fast = 0.0f, int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat2(const char* label, float v[2], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat3(const char* label, float v[3], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat4(const char* label, float v[4], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt(const char* label, int* v, int step = 1, int step_fast = 100, ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt2(const char* label, int v[2], ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt3(const char* label, int v[3], ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt4(const char* label, int v[4], ImGuiInputTextFlags extra_flags = 0);

    
     bool          SliderFloat(const char* label, float* v, float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);     
     bool          SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderAngle(const char* label, float* v_rad, float v_degrees_min = -360.0f, float v_degrees_max = +360.0f);
     bool          SliderInt(const char* label, int* v, int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* display_format = "%.0f");
     bool          VSliderFloat(const char* label, const ImVec2& size, float* v, float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          VSliderInt(const char* label, const ImVec2& size, int* v, int v_min, int v_max, const char* display_format = "%.0f");

    
     bool          TreeNode(const char* label);                                            
     bool          TreeNode(const char* str_id, const char* fmt, ...) ;    
     bool          TreeNode(const void* ptr_id, const char* fmt, ...) ;    
     bool          TreeNodeV(const char* str_id, const char* fmt, va_list args);           
     bool          TreeNodeV(const void* ptr_id, const char* fmt, va_list args);           
     bool          TreeNodeEx(const char* label, ImGuiTreeNodeFlags flags = 0);
     bool          TreeNodeEx(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) ;
     bool          TreeNodeEx(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) ;
     bool          TreeNodeExV(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args);
     bool          TreeNodeExV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args);
     void          TreePush(const char* str_id = 0);                                    
     void          TreePush(const void* ptr_id = 0);                                    
     void          TreePop();                                                              
     void          TreeAdvanceToLabelPos();                                                
     float         GetTreeNodeToLabelSpacing();                                            
     void          SetNextTreeNodeOpen(bool is_open, ImGuiSetCond cond = 0);               
     bool          CollapsingHeader(const char* label, ImGuiTreeNodeFlags flags = 0);      
     bool          CollapsingHeader(const char* label, bool* p_open, ImGuiTreeNodeFlags flags = 0); 

    
     bool          Selectable(const char* label, bool selected = false, ImGuiSelectableFlags flags = 0, const ImVec2& size = ImVec2(0,0));  
     bool          Selectable(const char* label, bool* p_selected, ImGuiSelectableFlags flags = 0, const ImVec2& size = ImVec2(0,0));
     bool          ListBox(const char* label, int* current_item, const char* const* items, int items_count, int height_in_items = -1);
     bool          ListBox(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items = -1);
     bool          ListBoxHeader(const char* label, const ImVec2& size = ImVec2(0,0)); 
     bool          ListBoxHeader(const char* label, int items_count, int height_in_items = -1); 
     void          ListBoxFooter();                                                    

    
     void          Value(const char* prefix, bool b);
     void          Value(const char* prefix, int v);
     void          Value(const char* prefix, unsigned int v);
     void          Value(const char* prefix, float v, const char* float_format = 0);
     void          ValueColor(const char* prefix, const ImVec4& v);
     void          ValueColor(const char* prefix, ImU32 v);

    
     void          SetTooltip(const char* fmt, ...) ;                  
     void          SetTooltipV(const char* fmt, va_list args);
     void          BeginTooltip();                                                     
     void          EndTooltip();

    
     bool          BeginMainMenuBar();                                                 
     void          EndMainMenuBar();
     bool          BeginMenuBar();                                                     
     void          EndMenuBar();
     bool          BeginMenu(const char* label, bool enabled = true);                  
     void          EndMenu();
     bool          MenuItem(const char* label, const char* shortcut = 0, bool selected = false, bool enabled = true);  
     bool          MenuItem(const char* label, const char* shortcut, bool* p_selected, bool enabled = true);              

    
     void          OpenPopup(const char* str_id);                                      
     bool          BeginPopup(const char* str_id);                                     
     bool          BeginPopupModal(const char* name, bool* p_open = 0, ImGuiWindowFlags extra_flags = 0);               
     bool          BeginPopupContextItem(const char* str_id, int mouse_button = 1);                                        
     bool          BeginPopupContextWindow(bool also_over_items = true, const char* str_id = 0, int mouse_button = 1);  
     bool          BeginPopupContextVoid(const char* str_id = 0, int mouse_button = 1);                                 
     void          EndPopup();
     void          CloseCurrentPopup();                                                

    
     void          LogToTTY(int max_depth = -1);                                       
     void          LogToFile(int max_depth = -1, const char* filename = 0);         
     void          LogToClipboard(int max_depth = -1);                                 
     void          LogFinish();                                                        
     void          LogButtons();                                                       
     void          LogText(const char* fmt, ...) ;                     

    
     void          PushClipRect(const ImVec2& clip_rect_min, const ImVec2& clip_rect_max, bool intersect_with_current_clip_rect);
     void          PopClipRect();

    
     bool          IsItemHovered();                                                    
     bool          IsItemHoveredRect();                                                
     bool          IsItemActive();                                                     
     bool          IsItemClicked(int mouse_button = 0);                                
     bool          IsItemVisible();                                                    
     bool          IsAnyItemHovered();
     bool          IsAnyItemActive();
     ImVec2        GetItemRectMin();                                                   
     ImVec2        GetItemRectMax();                                                   
     ImVec2        GetItemRectSize();                                                  
     void          SetItemAllowOverlap();                                              
     bool          IsWindowHovered();                                                  
     bool          IsWindowFocused();                                                  
     bool          IsRootWindowFocused();                                              
     bool          IsRootWindowOrAnyChildFocused();                                    
     bool          IsRootWindowOrAnyChildHovered();                                    
     bool          IsRectVisible(const ImVec2& size);                                  
     bool          IsRectVisible(const ImVec2& rect_min, const ImVec2& rect_max);      
     bool          IsPosHoveringAnyWindow(const ImVec2& pos);                          
     float         GetTime();
     int           GetFrameCount();
     const char*   GetStyleColName(ImGuiCol idx);
     ImVec2        CalcItemRectClosestPoint(const ImVec2& pos, bool on_edge = false, float outward = +0.0f);   
     ImVec2        CalcTextSize(const char* text, const char* text_end = 0, bool hide_text_after_double_hash = false, float wrap_width = -1.0f);
     void          CalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end);    

     bool          BeginChildFrame(ImGuiID id, const ImVec2& size, ImGuiWindowFlags extra_flags = 0);	
     void          EndChildFrame();

     ImVec4        ColorConvertU32ToFloat4(ImU32 in);
     ImU32         ColorConvertFloat4ToU32(const ImVec4& in);
     void          ColorConvertRGBtoHSV(float r, float g, float b, float& out_h, float& out_s, float& out_v);
     void          ColorConvertHSVtoRGB(float h, float s, float v, float& out_r, float& out_g, float& out_b);

    
     int           GetKeyIndex(ImGuiKey key);                                          
     bool          IsKeyDown(int key_index);                                           
     bool          IsKeyPressed(int key_index, bool repeat = true);                    
     bool          IsKeyReleased(int key_index);                                       
     bool          IsMouseDown(int button);                                            
     bool          IsMouseClicked(int button, bool repeat = false);                    
     bool          IsMouseDoubleClicked(int button);                                   
     bool          IsMouseReleased(int button);                                        
     bool          IsMouseHoveringWindow();                                            
     bool          IsMouseHoveringAnyWindow();                                         
     bool          IsMouseHoveringRect(const ImVec2& r_min, const ImVec2& r_max, bool clip = true);  
     bool          IsMouseDragging(int button = 0, float lock_threshold = -1.0f);      
     ImVec2        GetMousePos();                                                      
     ImVec2        GetMousePosOnOpeningCurrentPopup();                                 
     ImVec2        GetMouseDragDelta(int button = 0, float lock_threshold = -1.0f);    
     void          ResetMouseDragDelta(int button = 0);                                
     ImGuiMouseCursor GetMouseCursor();                                                
     void          SetMouseCursor(ImGuiMouseCursor type);                              
     void          CaptureKeyboardFromApp(bool capture = true);                        
     void          CaptureMouseFromApp(bool capture = true);                           

    
     void*         MemAlloc(size_t sz);
     void          MemFree(void* ptr);
     const char*   GetClipboardText();
     void          SetClipboardText(const char* text);

    
    
     const char*   GetVersion();
     ImGuiContext* CreateContext(void* (*malloc_fn)(size_t) = 0, void (*free_fn)(void*) = 0);
     void          DestroyContext(ImGuiContext* ctx);
     ImGuiContext* GetCurrentContext();
     void          SetCurrentContext(ImGuiContext* ctx);

    

    static inline bool      CollapsingHeader(const char* label, const char* str_id, bool framed = true, bool default_open = false) { (void)str_id; (void)framed; ImGuiTreeNodeFlags default_open_flags = 1<<5; return CollapsingHeader(label, (default_open ? default_open_flags : 0)); } 
    static inline ImFont*   GetWindowFont() { return GetFont(); }                              
    static inline float     GetWindowFontSize() { return GetFontSize(); }                      
    static inline void      SetScrollPosHere() { SetScrollHere(); }                            
    static inline bool      GetWindowCollapsed() { return ImGui::IsWindowCollapsed(); }        
    static inline bool      IsRectClipped(const ImVec2& size) { return !IsRectVisible(size); } 
#line 474 "c:\\biblioteki\\imgui-sfml\\imgui.h"

} 


enum ImGuiWindowFlags_
{
    
    ImGuiWindowFlags_NoTitleBar             = 1 << 0,   
    ImGuiWindowFlags_NoResize               = 1 << 1,   
    ImGuiWindowFlags_NoMove                 = 1 << 2,   
    ImGuiWindowFlags_NoScrollbar            = 1 << 3,   
    ImGuiWindowFlags_NoScrollWithMouse      = 1 << 4,   
    ImGuiWindowFlags_NoCollapse             = 1 << 5,   
    ImGuiWindowFlags_AlwaysAutoResize       = 1 << 6,   
    ImGuiWindowFlags_ShowBorders            = 1 << 7,   
    ImGuiWindowFlags_NoSavedSettings        = 1 << 8,   
    ImGuiWindowFlags_NoInputs               = 1 << 9,   
    ImGuiWindowFlags_MenuBar                = 1 << 10,  
    ImGuiWindowFlags_HorizontalScrollbar    = 1 << 11,  
    ImGuiWindowFlags_NoFocusOnAppearing     = 1 << 12,  
    ImGuiWindowFlags_NoBringToFrontOnFocus  = 1 << 13,  
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,  
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,  
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 << 16,  
    
    ImGuiWindowFlags_ChildWindow            = 1 << 20,  
    ImGuiWindowFlags_ChildWindowAutoFitX    = 1 << 21,  
    ImGuiWindowFlags_ChildWindowAutoFitY    = 1 << 22,  
    ImGuiWindowFlags_ComboBox               = 1 << 23,  
    ImGuiWindowFlags_Tooltip                = 1 << 24,  
    ImGuiWindowFlags_Popup                  = 1 << 25,  
    ImGuiWindowFlags_Modal                  = 1 << 26,  
    ImGuiWindowFlags_ChildMenu              = 1 << 27   
};


enum ImGuiInputTextFlags_
{
    
    ImGuiInputTextFlags_CharsDecimal        = 1 << 0,   
    ImGuiInputTextFlags_CharsHexadecimal    = 1 << 1,   
    ImGuiInputTextFlags_CharsUppercase      = 1 << 2,   
    ImGuiInputTextFlags_CharsNoBlank        = 1 << 3,   
    ImGuiInputTextFlags_AutoSelectAll       = 1 << 4,   
    ImGuiInputTextFlags_EnterReturnsTrue    = 1 << 5,   
    ImGuiInputTextFlags_CallbackCompletion  = 1 << 6,   
    ImGuiInputTextFlags_CallbackHistory     = 1 << 7,   
    ImGuiInputTextFlags_CallbackAlways      = 1 << 8,   
    ImGuiInputTextFlags_CallbackCharFilter  = 1 << 9,   
    ImGuiInputTextFlags_AllowTabInput       = 1 << 10,  
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,  
    ImGuiInputTextFlags_NoHorizontalScroll  = 1 << 12,  
    ImGuiInputTextFlags_AlwaysInsertMode    = 1 << 13,  
    ImGuiInputTextFlags_ReadOnly            = 1 << 14,  
    ImGuiInputTextFlags_Password            = 1 << 15,  
    
    ImGuiInputTextFlags_Multiline           = 1 << 20   
};


enum ImGuiTreeNodeFlags_
{
    ImGuiTreeNodeFlags_Selected             = 1 << 0,   
    ImGuiTreeNodeFlags_Framed               = 1 << 1,   
    ImGuiTreeNodeFlags_AllowOverlapMode     = 1 << 2,   
    ImGuiTreeNodeFlags_NoTreePushOnOpen     = 1 << 3,   
    ImGuiTreeNodeFlags_NoAutoOpenOnLog      = 1 << 4,   
    ImGuiTreeNodeFlags_DefaultOpen          = 1 << 5,   
    ImGuiTreeNodeFlags_OpenOnDoubleClick    = 1 << 6,   
    ImGuiTreeNodeFlags_OpenOnArrow          = 1 << 7,   
    ImGuiTreeNodeFlags_Leaf                 = 1 << 8,   
    ImGuiTreeNodeFlags_Bullet               = 1 << 9,   
    
    
    ImGuiTreeNodeFlags_CollapsingHeader     = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoAutoOpenOnLog
};


enum ImGuiSelectableFlags_
{
    
    ImGuiSelectableFlags_DontClosePopups    = 1 << 0,   
    ImGuiSelectableFlags_SpanAllColumns     = 1 << 1,   
    ImGuiSelectableFlags_AllowDoubleClick   = 1 << 2    
};


enum ImGuiKey_
{
    ImGuiKey_Tab,       
    ImGuiKey_LeftArrow, 
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,   
    ImGuiKey_DownArrow, 
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,      
    ImGuiKey_End,       
    ImGuiKey_Delete,    
    ImGuiKey_Backspace, 
    ImGuiKey_Enter,     
    ImGuiKey_Escape,    
    ImGuiKey_A,         
    ImGuiKey_C,         
    ImGuiKey_V,         
    ImGuiKey_X,         
    ImGuiKey_Y,         
    ImGuiKey_Z,         
    ImGuiKey_COUNT
};


enum ImGuiCol_
{
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,              
    ImGuiCol_ChildWindowBg,         
    ImGuiCol_PopupBg,               
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,               
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_TitleBgActive,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_ComboBg,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Column,
    ImGuiCol_ColumnHovered,
    ImGuiCol_ColumnActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_CloseButton,
    ImGuiCol_CloseButtonHovered,
    ImGuiCol_CloseButtonActive,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_ModalWindowDarkening,  
    ImGuiCol_COUNT
};



enum ImGuiStyleVar_
{
    ImGuiStyleVar_Alpha,               
    ImGuiStyleVar_WindowPadding,       
    ImGuiStyleVar_WindowRounding,      
    ImGuiStyleVar_WindowMinSize,       
    ImGuiStyleVar_ChildWindowRounding, 
    ImGuiStyleVar_FramePadding,        
    ImGuiStyleVar_FrameRounding,       
    ImGuiStyleVar_ItemSpacing,         
    ImGuiStyleVar_ItemInnerSpacing,    
    ImGuiStyleVar_IndentSpacing,       
    ImGuiStyleVar_GrabMinSize,         
    ImGuiStyleVar_ButtonTextAlign,     
    ImGuiStyleVar_Count_
};



enum ImGuiColorEditMode_
{
    ImGuiColorEditMode_UserSelect = -2,
    ImGuiColorEditMode_UserSelectShowButton = -1,
    ImGuiColorEditMode_RGB = 0,
    ImGuiColorEditMode_HSV = 1,
    ImGuiColorEditMode_HEX = 2
};


enum ImGuiMouseCursor_
{
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,         
    ImGuiMouseCursor_Move,              
    ImGuiMouseCursor_ResizeNS,          
    ImGuiMouseCursor_ResizeEW,          
    ImGuiMouseCursor_ResizeNESW,        
    ImGuiMouseCursor_ResizeNWSE,        
    ImGuiMouseCursor_Count_
};



enum ImGuiSetCond_
{
    ImGuiSetCond_Always        = 1 << 0, 
    ImGuiSetCond_Once          = 1 << 1, 
    ImGuiSetCond_FirstUseEver  = 1 << 2, 
    ImGuiSetCond_Appearing     = 1 << 3  
};

struct ImGuiStyle
{
    float       Alpha;                      
    ImVec2      WindowPadding;              
    ImVec2      WindowMinSize;              
    float       WindowRounding;             
    ImVec2      WindowTitleAlign;           
    float       ChildWindowRounding;        
    ImVec2      FramePadding;               
    float       FrameRounding;              
    ImVec2      ItemSpacing;                
    ImVec2      ItemInnerSpacing;           
    ImVec2      TouchExtraPadding;          
    float       IndentSpacing;              
    float       ColumnsMinSpacing;          
    float       ScrollbarSize;              
    float       ScrollbarRounding;          
    float       GrabMinSize;                
    float       GrabRounding;               
    ImVec2      ButtonTextAlign;            
    ImVec2      DisplayWindowPadding;       
    ImVec2      DisplaySafeAreaPadding;     
    bool        AntiAliasedLines;           
    bool        AntiAliasedShapes;          
    float       CurveTessellationTol;       
    ImVec4      Colors[ImGuiCol_COUNT];

     ImGuiStyle();
};



struct ImGuiIO
{
    
    
    

    ImVec2        DisplaySize;              
    float         DeltaTime;                
    float         IniSavingRate;            
    const char*   IniFilename;              
    const char*   LogFilename;              
    float         MouseDoubleClickTime;     
    float         MouseDoubleClickMaxDist;  
    float         MouseDragThreshold;       
    int           KeyMap[ImGuiKey_COUNT];   
    float         KeyRepeatDelay;           
    float         KeyRepeatRate;            
    void*         UserData;                 

    ImFontAtlas*  Fonts;                    
    float         FontGlobalScale;          
    bool          FontAllowUserScaling;     
    ImFont*       FontDefault;              
    ImVec2        DisplayFramebufferScale;  
    ImVec2        DisplayVisibleMin;        
    ImVec2        DisplayVisibleMax;        

    
    bool          OSXBehaviors;             

    
    
    

    
    
    
    void        (*RenderDrawListsFn)(ImDrawData* data);

    
    
    const char* (*GetClipboardTextFn)(void* user_data);
    void        (*SetClipboardTextFn)(void* user_data, const char* text);
    void*       ClipboardUserData;

    
    
    void*       (*MemAllocFn)(size_t sz);
    void        (*MemFreeFn)(void* ptr);

    
    
    void        (*ImeSetInputScreenPosFn)(int x, int y);
    void*       ImeWindowHandle;            

    
    
    

    ImVec2      MousePos;                   
    bool        MouseDown[5];               
    float       MouseWheel;                 
    bool        MouseDrawCursor;            
    bool        KeyCtrl;                    
    bool        KeyShift;                   
    bool        KeyAlt;                     
    bool        KeySuper;                   
    bool        KeysDown[512];              
    ImWchar     InputCharacters[16+1];      

    
     void AddInputCharacter(ImWchar c);                        
     void AddInputCharactersUTF8(const char* utf8_chars);      
    inline void    ClearInputCharacters() { InputCharacters[0] = 0; }   

    
    
    

    bool        WantCaptureMouse;           
    bool        WantCaptureKeyboard;        
    bool        WantTextInput;              
    float       Framerate;                  
    int         MetricsAllocs;              
    int         MetricsRenderVertices;      
    int         MetricsRenderIndices;       
    int         MetricsActiveWindows;       
    ImVec2      MouseDelta;                 

    
    
    

    ImVec2      MousePosPrev;               
    bool        MouseClicked[5];            
    ImVec2      MouseClickedPos[5];         
    float       MouseClickedTime[5];        
    bool        MouseDoubleClicked[5];      
    bool        MouseReleased[5];           
    bool        MouseDownOwned[5];          
    float       MouseDownDuration[5];       
    float       MouseDownDurationPrev[5];   
    float       MouseDragMaxDistanceSqr[5]; 
    float       KeysDownDuration[512];      
    float       KeysDownDurationPrev[512];  

       ImGuiIO();
};







template<typename T>
class ImVector
{
public:
    int                         Size;
    int                         Capacity;
    T*                          Data;

    typedef T                   value_type;
    typedef value_type*         iterator;
    typedef const value_type*   const_iterator;

    ImVector()                  { Size = Capacity = 0; Data = 0; }
    ~ImVector()                 { if (Data) ImGui::MemFree(Data); }

    inline bool                 empty() const                   { return Size == 0; }
    inline int                  size() const                    { return Size; }
    inline int                  capacity() const                { return Capacity; }

    inline value_type&          operator[](int i)               { (void)( (!!(i < Size)) || (_wassert(L"i < Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(854)), 0) ); return Data[i]; }
    inline const value_type&    operator[](int i) const         { (void)( (!!(i < Size)) || (_wassert(L"i < Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(855)), 0) ); return Data[i]; }

    inline void                 clear()                         { if (Data) { Size = Capacity = 0; ImGui::MemFree(Data); Data = 0; } }
    inline iterator             begin()                         { return Data; }
    inline const_iterator       begin() const                   { return Data; }
    inline iterator             end()                           { return Data + Size; }
    inline const_iterator       end() const                     { return Data + Size; }
    inline value_type&          front()                         { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(862)), 0) ); return Data[0]; }
    inline const value_type&    front() const                   { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(863)), 0) ); return Data[0]; }
    inline value_type&          back()                          { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(864)), 0) ); return Data[Size-1]; }
    inline const value_type&    back() const                    { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(865)), 0) ); return Data[Size-1]; }
    inline void                 swap(ImVector<T>& rhs)          { int rhs_size = rhs.Size; rhs.Size = Size; Size = rhs_size; int rhs_cap = rhs.Capacity; rhs.Capacity = Capacity; Capacity = rhs_cap; value_type* rhs_data = rhs.Data; rhs.Data = Data; Data = rhs_data; }

    inline int                  _grow_capacity(int new_size)    { int new_capacity = Capacity ? (Capacity + Capacity/2) : 8; return new_capacity > new_size ? new_capacity : new_size; }

    inline void                 resize(int new_size)            { if (new_size > Capacity) reserve(_grow_capacity(new_size)); Size = new_size; }
    inline void                 reserve(int new_capacity)
    {
        if (new_capacity <= Capacity) return;
        T* new_data = (value_type*)ImGui::MemAlloc((size_t)new_capacity * sizeof(value_type));
        if (Data)
            memcpy(new_data, Data, (size_t)Size * sizeof(value_type));
        ImGui::MemFree(Data);
        Data = new_data;
        Capacity = new_capacity;
    }

    inline void                 push_back(const value_type& v)  { if (Size == Capacity) reserve(_grow_capacity(Size+1)); Data[Size++] = v; }
    inline void                 pop_back()                      { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(883)), 0) ); Size--; }

    inline iterator             erase(const_iterator it)        { (void)( (!!(it >= Data && it < Data+Size)) || (_wassert(L"it >= Data && it < Data+Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(885)), 0) ); const ptrdiff_t off = it - Data; memmove(Data + off, Data + off + 1, ((size_t)Size - (size_t)off - 1) * sizeof(value_type)); Size--; return Data + off; }
    inline iterator             insert(const_iterator it, const value_type& v)  { (void)( (!!(it >= Data && it <= Data+Size)) || (_wassert(L"it >= Data && it <= Data+Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(886)), 0) ); const ptrdiff_t off = it - Data; if (Size == Capacity) reserve(Capacity ? Capacity * 2 : 4); if (off < (int)Size) memmove(Data + off + 1, Data + off, ((size_t)Size - (size_t)off) * sizeof(value_type)); Data[off] = v; Size++; return Data + off; }
};










struct ImGuiOnceUponAFrame
{
    ImGuiOnceUponAFrame() { RefFrame = -1; }
    mutable int RefFrame;
    operator bool() const { int current_frame = ImGui::GetFrameCount(); if (RefFrame == current_frame) return false; RefFrame = current_frame; return true; }
};


struct ImGuiTextFilter
{
    struct TextRange
    {
        const char* b;
        const char* e;

        TextRange() { b = e = 0; }
        TextRange(const char* _b, const char* _e) { b = _b; e = _e; }
        const char* begin() const { return b; }
        const char* end() const { return e; }
        bool empty() const { return b == e; }
        char front() const { return *b; }
        static bool is_blank(char c) { return c == ' ' || c == '\t'; }
        void trim_blanks() { while (b < e && is_blank(*b)) b++; while (e > b && is_blank(*(e-1))) e--; }
         void split(char separator, ImVector<TextRange>& out);
    };

    char                InputBuf[256];
    ImVector<TextRange> Filters;
    int                 CountGrep;

    ImGuiTextFilter(const char* default_filter = "");
    ~ImGuiTextFilter() {}
    void                Clear() { InputBuf[0] = 0; Build(); }
    bool                Draw(const char* label = "Filter (inc,-exc)", float width = 0.0f);    
    bool                PassFilter(const char* text, const char* text_end = 0) const;
    bool                IsActive() const { return !Filters.empty(); }
     void      Build();
};


struct ImGuiTextBuffer
{
    ImVector<char>      Buf;

    ImGuiTextBuffer()   { Buf.push_back(0); }
    inline char         operator[](int i) { return Buf.Data[i]; }
    const char*         begin() const { return &Buf.front(); }
    const char*         end() const { return &Buf.back(); }      
    int                 size() const { return Buf.Size - 1; }
    bool                empty() { return Buf.Size <= 1; }
    void                clear() { Buf.clear(); Buf.push_back(0); }
    const char*         c_str() const { return Buf.Data; }
     void      append(const char* fmt, ...) ;
     void      appendv(const char* fmt, va_list args);
};









struct ImGuiStorage
{
    struct Pair
    {
        ImGuiID key;
        union { int val_i; float val_f; void* val_p; };
        Pair(ImGuiID _key, int _val_i) { key = _key; val_i = _val_i; }
        Pair(ImGuiID _key, float _val_f) { key = _key; val_f = _val_f; }
        Pair(ImGuiID _key, void* _val_p) { key = _key; val_p = _val_p; }
    };
    ImVector<Pair>      Data;

    
    
    
     void      Clear();
     int       GetInt(ImGuiID key, int default_val = 0) const;
     void      SetInt(ImGuiID key, int val);
     bool      GetBool(ImGuiID key, bool default_val = false) const;
     void      SetBool(ImGuiID key, bool val);
     float     GetFloat(ImGuiID key, float default_val = 0.0f) const;
     void      SetFloat(ImGuiID key, float val);
     void*     GetVoidPtr(ImGuiID key) const; 
     void      SetVoidPtr(ImGuiID key, void* val);

    
    
    
    
     int*      GetIntRef(ImGuiID key, int default_val = 0);
     bool*     GetBoolRef(ImGuiID key, bool default_val = false);
     float*    GetFloatRef(ImGuiID key, float default_val = 0.0f);
     void**    GetVoidPtrRef(ImGuiID key, void* default_val = 0);

    
     void      SetAllInt(int val);
};


struct ImGuiTextEditCallbackData
{
    ImGuiInputTextFlags EventFlag;      
    ImGuiInputTextFlags Flags;          
    void*               UserData;       
    bool                ReadOnly;       

    
    ImWchar             EventChar;      

    
    
    ImGuiKey            EventKey;       
    char*               Buf;            
    int                 BufTextLen;     
    int                 BufSize;        
    bool                BufDirty;       
    int                 CursorPos;      
    int                 SelectionStart; 
    int                 SelectionEnd;   

    
     void    DeleteChars(int pos, int bytes_count);
     void    InsertChars(int pos, const char* text, const char* text_end = 0);
    bool    HasSelection() const { return SelectionStart != SelectionEnd; }
};



struct ImGuiSizeConstraintCallbackData
{
    void*   UserData;       
    ImVec2  Pos;            
    ImVec2  CurrentSize;    
    ImVec2  DesiredSize;    
};














#line 1052 "c:\\biblioteki\\imgui-sfml\\imgui.h"









struct ImColor
{
    ImVec4              Value;

    ImColor()                                                       { Value.x = Value.y = Value.z = Value.w = 0.0f; }
    ImColor(int r, int g, int b, int a = 255)                       { float sc = 1.0f/255.0f; Value.x = (float)r * sc; Value.y = (float)g * sc; Value.z = (float)b * sc; Value.w = (float)a * sc; }
    ImColor(ImU32 rgba)                                             { float sc = 1.0f/255.0f; Value.x = (float)((rgba>>0)&0xFF) * sc; Value.y = (float)((rgba>>8)&0xFF) * sc; Value.z = (float)((rgba>>16)&0xFF) * sc; Value.w = (float)((rgba>>24)&0xFF) * sc; }
    ImColor(float r, float g, float b, float a = 1.0f)              { Value.x = r; Value.y = g; Value.z = b; Value.w = a; }
    ImColor(const ImVec4& col)                                      { Value = col; }
    inline operator ImU32() const                                   { return ImGui::ColorConvertFloat4ToU32(Value); }
    inline operator ImVec4() const                                  { return Value; }

    inline void    SetHSV(float h, float s, float v, float a = 1.0f){ ImGui::ColorConvertHSVtoRGB(h, s, v, Value.x, Value.y, Value.z); Value.w = a; }

    static ImColor HSV(float h, float s, float v, float a = 1.0f)   { float r,g,b; ImGui::ColorConvertHSVtoRGB(h, s, v, r, g, b); return ImColor(r,g,b,a); }
};














struct ImGuiListClipper
{
    float   StartPosY;
    float   ItemsHeight;
    int     ItemsCount, StepNo, DisplayStart, DisplayEnd;

    
    
    
    ImGuiListClipper(int items_count = -1, float items_height = -1.0f)  { Begin(items_count, items_height); } 
    ~ImGuiListClipper()                                                 { (void)( (!!(ItemsCount == -1)) || (_wassert(L"ItemsCount == -1", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(1101)), 0) ); }      

     bool Step();                                              
     void Begin(int items_count, float items_height = -1.0f);  
     void End();                                               
};










typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);


struct ImDrawCmd
{
    unsigned int    ElemCount;              
    ImVec4          ClipRect;               
    ImTextureID     TextureId;              
    ImDrawCallback  UserCallback;           
    void*           UserCallbackData;       

    ImDrawCmd() { ElemCount = 0; ClipRect.x = ClipRect.y = -8192.0f; ClipRect.z = ClipRect.w = +8192.0f; TextureId = 0; UserCallback = 0; UserCallbackData = 0; }
};



typedef unsigned short ImDrawIdx;
#line 1135 "c:\\biblioteki\\imgui-sfml\\imgui.h"



struct ImDrawVert
{
    ImVec2  pos;
    ImVec2  uv;
    ImU32   col;
};





#line 1150 "c:\\biblioteki\\imgui-sfml\\imgui.h"



struct ImDrawChannel
{
    ImVector<ImDrawCmd>     CmdBuffer;
    ImVector<ImDrawIdx>     IdxBuffer;
};







struct ImDrawList
{
    
    ImVector<ImDrawCmd>     CmdBuffer;          
    ImVector<ImDrawIdx>     IdxBuffer;          
    ImVector<ImDrawVert>    VtxBuffer;          

    
    const char*             _OwnerName;         
    unsigned int            _VtxCurrentIdx;     
    ImDrawVert*             _VtxWritePtr;       
    ImDrawIdx*              _IdxWritePtr;       
    ImVector<ImVec4>        _ClipRectStack;     
    ImVector<ImTextureID>   _TextureIdStack;    
    ImVector<ImVec2>        _Path;              
    int                     _ChannelsCurrent;   
    int                     _ChannelsCount;     
    ImVector<ImDrawChannel> _Channels;          

    ImDrawList()  { _OwnerName = 0; Clear(); }
    ~ImDrawList() { ClearFreeMemory(); }
     void  PushClipRect(ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect = false);  
     void  PushClipRectFullScreen();
     void  PopClipRect();
     void  PushTextureID(const ImTextureID& texture_id);
     void  PopTextureID();

    
     void  AddLine(const ImVec2& a, const ImVec2& b, ImU32 col, float thickness = 1.0f);
     void  AddRect(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding = 0.0f, int rounding_corners_flags = ~0, float thickness = 1.0f);   
     void  AddRectFilled(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding = 0.0f, int rounding_corners_flags = ~0);                     
     void  AddRectFilledMultiColor(const ImVec2& a, const ImVec2& b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
     void  AddQuad(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col, float thickness = 1.0f);
     void  AddQuadFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col);
     void  AddTriangle(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col, float thickness = 1.0f);
     void  AddTriangleFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col);
     void  AddCircle(const ImVec2& centre, float radius, ImU32 col, int num_segments = 12, float thickness = 1.0f);
     void  AddCircleFilled(const ImVec2& centre, float radius, ImU32 col, int num_segments = 12);
     void  AddText(const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end = 0);
     void  AddText(const ImFont* font, float font_size, const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end = 0, float wrap_width = 0.0f, const ImVec4* cpu_fine_clip_rect = 0);
     void  AddImage(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& uv_a = ImVec2(0,0), const ImVec2& uv_b = ImVec2(1,1), ImU32 col = 0xFFFFFFFF);
     void  AddImageQuad(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a = ImVec2(0,0), const ImVec2& uv_b = ImVec2(1,0), const ImVec2& uv_c = ImVec2(1,1), const ImVec2& uv_d = ImVec2(0,1), ImU32 col = 0xFFFFFFFF);
     void  AddPolyline(const ImVec2* points, const int num_points, ImU32 col, bool closed, float thickness, bool anti_aliased);
     void  AddConvexPolyFilled(const ImVec2* points, const int num_points, ImU32 col, bool anti_aliased);
     void  AddBezierCurve(const ImVec2& pos0, const ImVec2& cp0, const ImVec2& cp1, const ImVec2& pos1, ImU32 col, float thickness, int num_segments = 0);

    
    inline    void  PathClear()                                                 { _Path.resize(0); }
    inline    void  PathLineTo(const ImVec2& pos)                               { _Path.push_back(pos); }
    inline    void  PathLineToMergeDuplicate(const ImVec2& pos)                 { if (_Path.Size == 0 || memcmp(&_Path[_Path.Size-1], &pos, 8) != 0) _Path.push_back(pos); }
    inline    void  PathFillConvex(ImU32 col)                                   { AddConvexPolyFilled(_Path.Data, _Path.Size, col, true); PathClear(); }
    inline    void  PathStroke(ImU32 col, bool closed, float thickness = 1.0f)  { AddPolyline(_Path.Data, _Path.Size, col, closed, thickness, true); PathClear(); }
     void  PathArcTo(const ImVec2& centre, float radius, float a_min, float a_max, int num_segments = 10);
     void  PathArcToFast(const ImVec2& centre, float radius, int a_min_of_12, int a_max_of_12);                                
     void  PathBezierCurveTo(const ImVec2& p1, const ImVec2& p2, const ImVec2& p3, int num_segments = 0);
     void  PathRect(const ImVec2& rect_min, const ImVec2& rect_max, float rounding = 0.0f, int rounding_corners_flags = ~0);   

    
    
    
     void  ChannelsSplit(int channels_count);
     void  ChannelsMerge();
     void  ChannelsSetCurrent(int channel_index);

    
     void  AddCallback(ImDrawCallback callback, void* callback_data);  
     void  AddDrawCmd();                                               

    
    
     void  Clear();
     void  ClearFreeMemory();
     void  PrimReserve(int idx_count, int vtx_count);
     void  PrimRect(const ImVec2& a, const ImVec2& b, ImU32 col);      
     void  PrimRectUV(const ImVec2& a, const ImVec2& b, const ImVec2& uv_a, const ImVec2& uv_b, ImU32 col);
     void  PrimQuadUV(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a, const ImVec2& uv_b, const ImVec2& uv_c, const ImVec2& uv_d, ImU32 col);
    inline    void  PrimWriteVtx(const ImVec2& pos, const ImVec2& uv, ImU32 col){ _VtxWritePtr->pos = pos; _VtxWritePtr->uv = uv; _VtxWritePtr->col = col; _VtxWritePtr++; _VtxCurrentIdx++; }
    inline    void  PrimWriteIdx(ImDrawIdx idx)                                 { *_IdxWritePtr = idx; _IdxWritePtr++; }
    inline    void  PrimVtx(const ImVec2& pos, const ImVec2& uv, ImU32 col)     { PrimWriteIdx((ImDrawIdx)_VtxCurrentIdx); PrimWriteVtx(pos, uv, col); }
     void  UpdateClipRect();
     void  UpdateTextureID();
};


struct ImDrawData
{
    bool            Valid;                  
    ImDrawList**    CmdLists;
    int             CmdListsCount;
    int             TotalVtxCount;          
    int             TotalIdxCount;          

    
    ImDrawData() { Valid = false; CmdLists = 0; CmdListsCount = TotalVtxCount = TotalIdxCount = 0; }
     void DeIndexAllBuffers();               
     void ScaleClipRects(const ImVec2& sc);  
};

struct ImFontConfig
{
    void*           FontData;                   
    int             FontDataSize;               
    bool            FontDataOwnedByAtlas;       
    int             FontNo;                     
    float           SizePixels;                 
    int             OversampleH, OversampleV;   
    bool            PixelSnapH;                 
    ImVec2          GlyphExtraSpacing;          
    const ImWchar*  GlyphRanges;                
    bool            MergeMode;                  
    bool            MergeGlyphCenterV;          

    
    char            Name[32];                               
    ImFont*         DstFont;

     ImFontConfig();
};










struct ImFontAtlas
{
     ImFontAtlas();
     ~ImFontAtlas();
     ImFont*           AddFont(const ImFontConfig* font_cfg);
     ImFont*           AddFontDefault(const ImFontConfig* font_cfg = 0);
     ImFont*           AddFontFromFileTTF(const char* filename, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);
     ImFont*           AddFontFromMemoryTTF(void* ttf_data, int ttf_size, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);                                        
     ImFont*           AddFontFromMemoryCompressedTTF(const void* compressed_ttf_data, int compressed_ttf_size, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);  
     ImFont*           AddFontFromMemoryCompressedBase85TTF(const char* compressed_ttf_data_base85, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);              
     void              ClearTexData();             
     void              ClearInputData();           
     void              ClearFonts();               
     void              Clear();                    

    
    
    
    
    
     void              GetTexDataAsAlpha8(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel = 0);  
     void              GetTexDataAsRGBA32(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel = 0);  
    void                        SetTexID(void* id)  { TexID = id; }

    
    
     const ImWchar*    GetGlyphRangesDefault();    
     const ImWchar*    GetGlyphRangesKorean();     
     const ImWchar*    GetGlyphRangesJapanese();   
     const ImWchar*    GetGlyphRangesChinese();    
     const ImWchar*    GetGlyphRangesCyrillic();   
     const ImWchar*    GetGlyphRangesThai();       

    
    
    void*                       TexID;              
    unsigned char*              TexPixelsAlpha8;    
    unsigned int*               TexPixelsRGBA32;    
    int                         TexWidth;           
    int                         TexHeight;          
    int                         TexDesiredWidth;    
    ImVec2                      TexUvWhitePixel;    
    ImVector<ImFont*>           Fonts;              

    
    ImVector<ImFontConfig>      ConfigData;         
     bool              Build();            
     void              RenderCustomTexData(int pass, void* rects);
};



struct ImFont
{
    struct Glyph
    {
        ImWchar                 Codepoint;
        float                   XAdvance;
        float                   X0, Y0, X1, Y1;
        float                   U0, V0, U1, V1;     
    };

    
    float                       FontSize;           
    float                       Scale;              
    ImVec2                      DisplayOffset;      
    ImVector<Glyph>             Glyphs;             
    ImVector<float>             IndexXAdvance;      
    ImVector<unsigned short>    IndexLookup;        
    const Glyph*                FallbackGlyph;      
    float                       FallbackXAdvance;   
    ImWchar                     FallbackChar;       

    
    short                       ConfigDataCount;    
    ImFontConfig*               ConfigData;         
    ImFontAtlas*                ContainerAtlas;     
    float                       Ascent, Descent;    
    int                         MetricsTotalSurface;

    
     ImFont();
     ~ImFont();
     void              Clear();
     void              BuildLookupTable();
     const Glyph*      FindGlyph(ImWchar c) const;
     void              SetFallbackChar(ImWchar c);
    float                       GetCharAdvance(ImWchar c) const     { return ((int)c < IndexXAdvance.Size) ? IndexXAdvance[(int)c] : FallbackXAdvance; }
    bool                        IsLoaded() const                    { return ContainerAtlas != 0; }

    
    
     ImVec2            CalcTextSizeA(float size, float max_width, float wrap_width, const char* text_begin, const char* text_end = 0, const char** remaining = 0) const; 
     const char*       CalcWordWrapPositionA(float scale, const char* text, const char* text_end, float wrap_width) const;
     void              RenderChar(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, unsigned short c) const;
     void              RenderText(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, const ImVec4& clip_rect, const char* text_begin, const char* text_end, float wrap_width = 0.0f, bool cpu_fine_clip = false) const;

    
     void              GrowIndex(int new_size);
     void              AddRemapChar(ImWchar dst, ImWchar src, bool overwrite_dst = true); 
};



#line 1398 "c:\\biblioteki\\imgui-sfml\\imgui.h"





#line 15 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"








#pragma once



__pragma(pack(push, 8)) extern "C" {











    

#line 28 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"
        
    #line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"

    __declspec(dllimport) const unsigned short* __cdecl __pctype_func(void);
    __declspec(dllimport) const wctype_t*       __cdecl __pwctype_func(void);

    



        
        
    #line 41 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"
#line 42 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"





















  __declspec(dllimport) int __cdecl iswalnum  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswalpha  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswascii  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswblank  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswcntrl  (  wint_t _C);


  __declspec(dllimport) int __cdecl iswdigit  (  wint_t _C);

  __declspec(dllimport) int __cdecl iswgraph  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswlower  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswprint  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswpunct  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswspace  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswupper  (  wint_t _C);
  __declspec(dllimport) int __cdecl iswxdigit (  wint_t _C);
  __declspec(dllimport) int __cdecl __iswcsymf(  wint_t _C);
  __declspec(dllimport) int __cdecl __iswcsym (  wint_t _C);

  __declspec(dllimport) int __cdecl _iswalnum_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswalpha_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswblank_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswcntrl_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswdigit_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswgraph_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswlower_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswprint_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswpunct_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswspace_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswupper_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswxdigit_l(  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswcsymf_l (  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl _iswcsym_l  (  wint_t _C,   _locale_t _Locale);


  __declspec(dllimport) wint_t __cdecl towupper(  wint_t _C);
  __declspec(dllimport) wint_t __cdecl towlower(  wint_t _C);
  __declspec(dllimport) int    __cdecl iswctype(  wint_t _C,   wctype_t _Type);

  __declspec(dllimport) wint_t __cdecl _towupper_l(  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) wint_t __cdecl _towlower_l(  wint_t _C,   _locale_t _Locale);
  __declspec(dllimport) int    __cdecl _iswctype_l(  wint_t _C,   wctype_t _Type,   _locale_t _Locale);



      __declspec(dllimport) int __cdecl isleadbyte(  int _C);
      __declspec(dllimport) int __cdecl _isleadbyte_l(  int _C,   _locale_t _Locale);

    __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "iswctype" " " "instead. See online help for details.")) __declspec(dllimport) int __cdecl is_wctype(  wint_t _C,   wctype_t _Type);
#line 113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"


















































































#line 196 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wctype.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"

__pragma(pack(push, 8)) extern "C" {









  __declspec(dllimport) int __cdecl _isctype(  int _C,   int _Type);
  __declspec(dllimport) int __cdecl _isctype_l(  int _C,   int _Type,   _locale_t _Locale);
   __declspec(dllimport) int __cdecl isalpha(  int _C);
  __declspec(dllimport) int __cdecl _isalpha_l(  int _C,   _locale_t _Locale);
   __declspec(dllimport) int __cdecl isupper(  int _C);
  __declspec(dllimport) int __cdecl _isupper_l(  int _C,   _locale_t _Locale);
   __declspec(dllimport) int __cdecl islower(  int _C);
  __declspec(dllimport) int __cdecl _islower_l(  int _C,   _locale_t _Locale);


   __declspec(dllimport) int __cdecl isdigit(  int _C);

  __declspec(dllimport) int __cdecl _isdigit_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl isxdigit(  int _C);
  __declspec(dllimport) int __cdecl _isxdigit_l(  int _C,   _locale_t _Locale);


   __declspec(dllimport) int __cdecl isspace(  int _C);

  __declspec(dllimport) int __cdecl _isspace_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl ispunct(  int _C);
  __declspec(dllimport) int __cdecl _ispunct_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl isblank(  int _C);
  __declspec(dllimport) int __cdecl _isblank_l(  int _C,   _locale_t _Locale);
   __declspec(dllimport) int __cdecl isalnum(  int _C);
  __declspec(dllimport) int __cdecl _isalnum_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl isprint(  int _C);
  __declspec(dllimport) int __cdecl _isprint_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl isgraph(  int _C);
  __declspec(dllimport) int __cdecl _isgraph_l(  int _C,   _locale_t _Locale);
  __declspec(dllimport) int __cdecl iscntrl(  int _C);
  __declspec(dllimport) int __cdecl _iscntrl_l(  int _C,   _locale_t _Locale);


   __declspec(dllimport) int __cdecl toupper(  int _C);


   __declspec(dllimport) int __cdecl tolower(  int _C);

   __declspec(dllimport) int __cdecl _tolower(  int _C);
  __declspec(dllimport) int __cdecl _tolower_l(  int _C,   _locale_t _Locale);
   __declspec(dllimport) int __cdecl _toupper(  int _C);
  __declspec(dllimport) int __cdecl _toupper_l(  int _C,   _locale_t _Locale);

  __declspec(dllimport) int __cdecl __isascii(  int _C);
  __declspec(dllimport) int __cdecl __toascii(  int _C);
  __declspec(dllimport) int __cdecl __iscsymf(  int _C);
  __declspec(dllimport) int __cdecl __iscsym(  int _C);










    
    
    
          

#line 88 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"
            
        #line 90 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"

        


            
        #line 96 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"

        
        
         
        __declspec(dllimport) int __cdecl ___mb_cur_max_func(void);
         
        __declspec(dllimport) int __cdecl ___mb_cur_max_l_func(_locale_t _Locale);
    #line 104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"



    
    
    
        __declspec(dllimport) int __cdecl _chvalidator(  int _Ch,   int _Mask);
        
    

#line 115 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"



    
    
    
    
    
    
    
    



    












#line 143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"

    __inline __crt_locale_data_public* __cdecl __acrt_get_locale_data_prefix(void const volatile* const _LocalePointers)
    {
        _locale_t const _TypedLocalePointers = (_locale_t)_LocalePointers;
        return (__crt_locale_data_public*)_TypedLocalePointers->locinfo;
    }

    
    __declspec(dllimport) int __cdecl _chvalidator_l(  _locale_t,   int _Ch,   int _Mask);
    #line 153 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"

    __inline int __cdecl _chvalidchk_l(
              int       const _C,
              int       const _Mask,
          _locale_t const _Locale
        )
    {
        
        return _chvalidator_l(_Locale, _C, _Mask);
        






#line 170 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"
    }

    
    

    __inline int __cdecl _ischartype_l(
              int       const _C,
              int       const _Mask,
          _locale_t const _Locale
        )
    {
        if (_Locale && __acrt_get_locale_data_prefix(_Locale)->_locale_mb_cur_max > 1)
        {
            return _isctype_l(_C, _Mask, _Locale);
        }

        return _chvalidchk_l(_C, _Mask, _Locale);
    }

    
    
    
    
    
    
    
    
    
    
    
    

    
    

    
    


    
    
    
    
    

    
    
    
    

#line 221 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"



    
    
    
    
#line 229 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"



#line 233 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\ctype.h"
} __pragma(pack(pop))
#line 16 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"










#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {

#pragma warning(push)
#pragma warning(disable:4738) 
#pragma warning(disable:4820) 




    
    
    struct _exception
    {
        int    type;   
        char*  name;   
        double arg1;   
        double arg2;   
        double retval; 
    };

    
    
    
        

        struct _complex
        {
            double x, y; 
        };

        


#line 47 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
    #line 48 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
#line 49 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"










#line 60 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
    typedef float  float_t;
    typedef double double_t;
#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"















    
        extern double const _HUGE;
    

#line 83 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
#line 84 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


    
#line 88 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


















































































void __cdecl _fperrraise(  int _Except);

  __declspec(dllimport) short __cdecl _dclass(  double _X);
  __declspec(dllimport) short __cdecl _ldclass(  long double _X);
  __declspec(dllimport) short __cdecl _fdclass(  float _X);

  __declspec(dllimport) int __cdecl _dsign(  double _X);
  __declspec(dllimport) int __cdecl _ldsign(  long double _X);
  __declspec(dllimport) int __cdecl _fdsign(  float _X);

  __declspec(dllimport) int __cdecl _dpcomp(  double _X,   double _Y);
  __declspec(dllimport) int __cdecl _ldpcomp(  long double _X,   long double _Y);
  __declspec(dllimport) int __cdecl _fdpcomp(  float _X,   float _Y);

  __declspec(dllimport) short __cdecl _dtest(  double* _Px);
  __declspec(dllimport) short __cdecl _ldtest(  long double* _Px);
  __declspec(dllimport) short __cdecl _fdtest(  float* _Px);

__declspec(dllimport) short __cdecl _d_int(  double* _Px,   short _Xexp);
__declspec(dllimport) short __cdecl _ld_int(  long double* _Px,   short _Xexp);
__declspec(dllimport) short __cdecl _fd_int(  float* _Px,   short _Xexp);

__declspec(dllimport) short __cdecl _dscale(  double* _Px,   long _Lexp);
__declspec(dllimport) short __cdecl _ldscale(  long double* _Px,   long _Lexp);
__declspec(dllimport) short __cdecl _fdscale(  float* _Px,   long _Lexp);

__declspec(dllimport) short __cdecl _dunscale(  short* _Pex,   double* _Px);
__declspec(dllimport) short __cdecl _ldunscale(  short* _Pex,   long double* _Px);
__declspec(dllimport) short __cdecl _fdunscale(  short* _Pex,   float* _Px);

  __declspec(dllimport) short __cdecl _dexp(  double* _Px,   double _Y,   long _Eoff);
  __declspec(dllimport) short __cdecl _ldexp(  long double* _Px,   long double _Y,   long _Eoff);
  __declspec(dllimport) short __cdecl _fdexp(  float* _Px,   float _Y,   long _Eoff);

  __declspec(dllimport) short __cdecl _dnorm(  unsigned short* _Ps);
  __declspec(dllimport) short __cdecl _fdnorm(  unsigned short* _Ps);

  __declspec(dllimport) double __cdecl _dpoly(  double _X,   double const* _Tab,   int _N);
  __declspec(dllimport) long double __cdecl _ldpoly(  long double _X,   long double const* _Tab,   int _N);
  __declspec(dllimport) float __cdecl _fdpoly(  float _X,   float const* _Tab,   int _N);

  __declspec(dllimport) double __cdecl _dlog(  double _X,   int _Baseflag);
  __declspec(dllimport) long double __cdecl _ldlog(  long double _X,   int _Baseflag);
  __declspec(dllimport) float __cdecl _fdlog(  float _X,   int _Baseflag);

  __declspec(dllimport) double __cdecl _dsin(  double _X,   unsigned int _Qoff);
  __declspec(dllimport) long double __cdecl _ldsin(  long double _X,   unsigned int _Qoff);
  __declspec(dllimport) float __cdecl _fdsin(  float _X,   unsigned int _Qoff);


typedef union
{   
    unsigned short _Sh[4];
    double _Val;
} _double_val;


typedef union
{   
    unsigned short _Sh[2];
    float _Val;
} _float_val;


typedef union
{   
    unsigned short _Sh[4];
    long double _Val;
} _ldouble_val;

typedef union
{   
    unsigned short _Word[4];
    float _Float;
    double _Double;
    long double _Long_double;
} _float_const;

extern const _float_const _Denorm_C,  _Inf_C,  _Nan_C,  _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;

extern const _float_const _Eps_C,  _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;

extern const double      _Zero_C,  _Xbig_C;
extern const float       _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;




























extern "C++"
{
      inline int fpclassify(  float _X) throw()
    {
        return _fdtest(&_X);
    }

      inline int fpclassify(  double _X) throw()
    {
        return _dtest(&_X);
    }

      inline int fpclassify(  long double _X) throw()
    {
        return _ldtest(&_X);
    }

      inline bool signbit(  float _X) throw()
    {
        return _fdsign(_X) != 0;
    }

      inline bool signbit(  double _X) throw()
    {
        return _dsign(_X) != 0;
    }

      inline bool signbit(  long double _X) throw()
    {
        return _ldsign(_X) != 0;
    }

      inline int _fpcomp(  float _X,   float _Y) throw()
    {
        return _fdpcomp(_X, _Y);
    }

      inline int _fpcomp(  double _X,   double _Y) throw()
    {
        return _dpcomp(_X, _Y);
    }

      inline int _fpcomp(  long double _X,   long double _Y) throw()
    {
        return _ldpcomp(_X, _Y);
    }

    template <class _Trc, class _Tre> struct _Combined_type
    {   
        typedef float _Type;
    };

    template <> struct _Combined_type<float, double>
    {   
        typedef double _Type;
    };

    template <> struct _Combined_type<float, long double>
    {   
        typedef long double _Type;
    };

    template <class _Ty, class _T2> struct _Real_widened
    {   
        typedef long double _Type;
    };

    template <> struct _Real_widened<float, float>
    {   
        typedef float _Type;
    };

    template <> struct _Real_widened<float, double>
    {   
        typedef double _Type;
    };

    template <> struct _Real_widened<double, float>
    {   
        typedef double _Type;
    };

    template <> struct _Real_widened<double, double>
    {   
        typedef double _Type;
    };

    template <class _Ty> struct _Real_type
    {   
        typedef double _Type;   
    };

    template <> struct _Real_type<float>
    {   
        typedef float _Type;
    };

    template <> struct _Real_type<long double>
    {   
        typedef long double _Type;
    };

    template <class _T1, class _T2>
      inline int _fpcomp(  _T1 _X,   _T2 _Y) throw()
    {   
        typedef typename _Combined_type<float,
            typename _Real_widened<
            typename _Real_type<_T1>::_Type,
            typename _Real_type<_T2>::_Type>::_Type>::_Type _Tw;
        return _fpcomp((_Tw)_X, (_Tw)_Y);
    }

    template <class _Ty>
      inline bool isfinite(  _Ty _X) throw()
    {
        return fpclassify(_X) <= 0;
    }

    template <class _Ty>
      inline bool isinf(  _Ty _X) throw()
    {
        return fpclassify(_X) == 1;
    }

    template <class _Ty>
      inline bool isnan(  _Ty _X) throw()
    {
        return fpclassify(_X) == 2;
    }

    template <class _Ty>
      inline bool isnormal(  _Ty _X) throw()
    {
        return fpclassify(_X) == (-1);
    }

    template <class _Ty1, class _Ty2>
      inline bool isgreater(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 4) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isgreaterequal(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (2 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isless(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 1) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool islessequal(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 2)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool islessgreater(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isunordered(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return _fpcomp(_X, _Y) == 0;
    }
}  
#line 460 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"





      int       __cdecl abs(  int _X);
      long      __cdecl labs(  long _X);
      long long __cdecl llabs(  long long _X);

      double __cdecl acos(  double _X);
      double __cdecl asin(  double _X);
      double __cdecl atan(  double _X);
      double __cdecl atan2(  double _Y,   double _X);

      double __cdecl cos(  double _X);
      double __cdecl cosh(  double _X);
      double __cdecl exp(  double _X);
       double __cdecl fabs(  double _X);
      double __cdecl fmod(  double _X,   double _Y);
      double __cdecl log(  double _X);
      double __cdecl log10(  double _X);
      double __cdecl pow(  double _X,   double _Y);
      double __cdecl sin(  double _X);
      double __cdecl sinh(  double _X);
       double __cdecl sqrt(  double _X);
      double __cdecl tan(  double _X);
      double __cdecl tanh(  double _X);

      __declspec(dllimport) double    __cdecl acosh(  double _X);
      __declspec(dllimport) double    __cdecl asinh(  double _X);
      __declspec(dllimport) double    __cdecl atanh(  double _X);
      __declspec(dllimport)  double    __cdecl atof(  char const* _String);
      __declspec(dllimport)  double    __cdecl _atof_l(  char const* _String,   _locale_t _Locale);
      __declspec(dllimport) double    __cdecl _cabs(  struct _complex _Complex_value);
      __declspec(dllimport) double    __cdecl cbrt(  double _X);
      __declspec(dllimport) double    __cdecl ceil(  double _X);
      __declspec(dllimport) double    __cdecl _chgsign(  double _X);
      __declspec(dllimport) double    __cdecl copysign(  double _Number,   double _Sign);
      __declspec(dllimport) double    __cdecl _copysign(  double _Number,   double _Sign);
      __declspec(dllimport) double    __cdecl erf(  double _X);
      __declspec(dllimport) double    __cdecl erfc(  double _X);
      __declspec(dllimport) double    __cdecl exp2(  double _X);
      __declspec(dllimport) double    __cdecl expm1(  double _X);
      __declspec(dllimport) double    __cdecl fdim(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl floor(  double _X);
      __declspec(dllimport) double    __cdecl fma(  double _X,   double _Y,   double _Z);
      __declspec(dllimport) double    __cdecl fmax(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl fmin(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl frexp(  double _X,   int* _Y);
      __declspec(dllimport) double    __cdecl hypot(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl _hypot(  double _X,   double _Y);
      __declspec(dllimport) int       __cdecl ilogb(  double _X);
      __declspec(dllimport) double    __cdecl ldexp(  double _X,   int _Y);
      __declspec(dllimport) double    __cdecl lgamma(  double _X);
      __declspec(dllimport) long long __cdecl llrint(  double _X);
      __declspec(dllimport) long long __cdecl llround(  double _X);
      __declspec(dllimport) double    __cdecl log1p(  double _X);
      __declspec(dllimport) double    __cdecl log2(  double _X);
      __declspec(dllimport) double    __cdecl logb(  double _X);
      __declspec(dllimport) long      __cdecl lrint(  double _X);
      __declspec(dllimport) long      __cdecl lround(  double _X);

    int __cdecl _matherr(  struct _exception* _Except);

      __declspec(dllimport) double __cdecl modf(  double _X,   double* _Y);
      __declspec(dllimport) double __cdecl nan(  char const* _X);
      __declspec(dllimport) double __cdecl nearbyint(  double _X);
      __declspec(dllimport) double __cdecl nextafter(  double _X,   double _Y);
      __declspec(dllimport) double __cdecl nexttoward(  double _X,   long double _Y);
      __declspec(dllimport) double __cdecl remainder(  double _X,   double _Y);
      __declspec(dllimport) double __cdecl remquo(  double _X,   double _Y,   int* _Z);
      __declspec(dllimport) double __cdecl rint(  double _X);
      __declspec(dllimport) double __cdecl round(  double _X);
      __declspec(dllimport) double __cdecl scalbln(  double _X,   long _Y);
      __declspec(dllimport) double __cdecl scalbn(  double _X,   int _Y);
      __declspec(dllimport) double __cdecl tgamma(  double _X);
      __declspec(dllimport) double __cdecl trunc(  double _X);
      __declspec(dllimport) double __cdecl _j0(  double _X );
      __declspec(dllimport) double __cdecl _j1(  double _X );
      __declspec(dllimport) double __cdecl _jn(int _X,   double _Y);
      __declspec(dllimport) double __cdecl _y0(  double _X);
      __declspec(dllimport) double __cdecl _y1(  double _X);
      __declspec(dllimport) double __cdecl _yn(  int _X,   double _Y);

      __declspec(dllimport) float     __cdecl acoshf(  float _X);
      __declspec(dllimport) float     __cdecl asinhf(  float _X);
      __declspec(dllimport) float     __cdecl atanhf(  float _X);
      __declspec(dllimport) float     __cdecl cbrtf(  float _X);
      __declspec(dllimport) float     __cdecl _chgsignf(  float _X);
      __declspec(dllimport) float     __cdecl copysignf(  float _Number,   float _Sign);
      __declspec(dllimport) float     __cdecl _copysignf(  float _Number,   float _Sign);
      __declspec(dllimport) float     __cdecl erff(  float _X);
      __declspec(dllimport) float     __cdecl erfcf(  float _X);
      __declspec(dllimport) float     __cdecl expm1f(  float _X);
      __declspec(dllimport) float     __cdecl exp2f(  float _X);
      __declspec(dllimport) float     __cdecl fdimf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl fmaf(  float _X,   float _Y,   float _Z);
      __declspec(dllimport) float     __cdecl fmaxf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl fminf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl _hypotf(  float _X,   float _Y);
      __declspec(dllimport) int       __cdecl ilogbf(  float _X);
      __declspec(dllimport) float     __cdecl lgammaf(  float _X);
      __declspec(dllimport) long long __cdecl llrintf(  float _X);
      __declspec(dllimport) long long __cdecl llroundf(  float _X);
      __declspec(dllimport) float     __cdecl log1pf(  float _X);
      __declspec(dllimport) float     __cdecl log2f(  float _X);
      __declspec(dllimport) float     __cdecl logbf(  float _X);
      __declspec(dllimport) long      __cdecl lrintf(  float _X);
      __declspec(dllimport) long      __cdecl lroundf(  float _X);
      __declspec(dllimport) float     __cdecl nanf(  char const* _X);
      __declspec(dllimport) float     __cdecl nearbyintf(  float _X);
      __declspec(dllimport) float     __cdecl nextafterf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl nexttowardf(  float _X,   long double _Y);
      __declspec(dllimport) float     __cdecl remainderf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl remquof(  float _X,   float _Y,   int* _Z);
      __declspec(dllimport) float     __cdecl rintf(  float _X);
      __declspec(dllimport) float     __cdecl roundf(  float _X);
      __declspec(dllimport) float     __cdecl scalblnf(  float _X,   long _Y);
      __declspec(dllimport) float     __cdecl scalbnf(  float _X,   int _Y);
      __declspec(dllimport) float     __cdecl tgammaf(  float _X);
      __declspec(dllimport) float     __cdecl truncf(  float _X);

    

          __declspec(dllimport) int  __cdecl _set_SSE2_enable(  int _Flag);

    #line 587 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    










#line 600 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"




#line 605 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"



    










#line 620 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl acosf(  float _X)
        {
            return (float)acos(_X);
        }

          __inline float __cdecl asinf(  float _X)
        {
            return (float)asin(_X);
        }

          __inline float __cdecl atan2f(  float _Y,   float _X)
        {
            return (float)atan2(_Y, _X);
        }

          __inline float __cdecl atanf(  float _X)
        {
            return (float)atan(_X);
        }

          __inline float __cdecl ceilf(  float _X)
        {
            return (float)ceil(_X);
        }

          __inline float __cdecl cosf(  float _X)
        {
            return (float)cos(_X);
        }

          __inline float __cdecl coshf(  float _X)
        {
            return (float)cosh(_X);
        }

          __inline float __cdecl expf(  float _X)
        {
            return (float)exp(_X);
        }

    #line 662 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    



#line 668 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl fabsf(  float _X)
        {
            return (float)fabs(_X);
        }

    #line 675 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    




#line 682 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl floorf(  float _X)
        {
            return (float)floor(_X);
        }

          __inline float __cdecl fmodf(  float _X,   float _Y)
        {
            return (float)fmod(_X, _Y);
        }

    #line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

      __inline float __cdecl frexpf(  float _X,   int *_Y)
    {
        return (float)frexp(_X, _Y);
    }

      __inline float __cdecl hypotf(  float _X,   float _Y)
    {
        return _hypotf(_X, _Y);
    }

      __inline float __cdecl ldexpf(  float _X,   int _Y)
    {
        return (float)ldexp(_X, _Y);
    }

    











#line 723 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl log10f(  float _X)
        {
            return (float)log10(_X);
        }

          __inline float __cdecl logf(  float _X)
        {
            return (float)log(_X);
        }

          __inline float __cdecl modff(  float _X,   float* _Y)
        {
            double _F, _I;
            _F = modf(_X, &_I);
            *_Y = (float)_I;
            return (float)_F;
        }

          __inline float __cdecl powf(  float _X,   float _Y)
        {
            return (float)pow(_X, _Y);
        }

          __inline float __cdecl sinf(  float _X)
        {
            return (float)sin(_X);
        }

          __inline float __cdecl sinhf(  float _X)
        {
            return (float)sinh(_X);
        }

          __inline float __cdecl sqrtf(  float _X)
        {
            return (float)sqrt(_X);
        }

          __inline float __cdecl tanf(  float _X)
        {
            return (float)tan(_X);
        }

          __inline float __cdecl tanhf(  float _X)
        {
            return (float)tanh(_X);
        }

    #line 773 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

      __declspec(dllimport) long double __cdecl acoshl(  long double _X);

      __inline long double __cdecl acosl(  long double _X)
    {
        return acos((double)_X);
    }

      __declspec(dllimport) long double __cdecl asinhl(  long double _X);

      __inline long double __cdecl asinl(  long double _X)
    {
        return asin((double)_X);
    }

      __inline long double __cdecl atan2l(  long double _Y,   long double _X)
    {
        return atan2((double)_Y, (double)_X);
    }

      __declspec(dllimport) long double __cdecl atanhl(  long double _X);

      __inline long double __cdecl atanl(  long double _X)
    {
        return atan((double)_X);
    }

      __declspec(dllimport) long double __cdecl cbrtl(  long double _X);

      __inline long double __cdecl ceill(  long double _X)
    {
        return ceil((double)_X);
    }

      __inline long double __cdecl _chgsignl(  long double _X)
    {
        return _chgsign((double)_X);
    }

      __declspec(dllimport) long double __cdecl copysignl(  long double _Number,   long double _Sign);

      __inline long double __cdecl _copysignl(  long double _Number,   long double _Sign)
    {
        return _copysign((double)_Number, (double)_Sign);
    }

      __inline long double __cdecl coshl(  long double _X)
    {
        return cosh((double)_X);
    }

      __inline long double __cdecl cosl(  long double _X)
    {
        return cos((double)_X);
    }

      __declspec(dllimport) long double __cdecl erfl(  long double _X);
      __declspec(dllimport) long double __cdecl erfcl(  long double _X);

      __inline long double __cdecl expl(  long double _X)
    {
        return exp((double)_X);
    }

      __declspec(dllimport) long double __cdecl exp2l(  long double _X);
      __declspec(dllimport) long double __cdecl expm1l(  long double _X);

      __inline long double __cdecl fabsl(  long double _X)
    {
        return fabs((double)_X);
    }

      __declspec(dllimport) long double __cdecl fdiml(  long double _X,   long double _Y);

      __inline long double __cdecl floorl(  long double _X)
    {
        return floor((double)_X);
    }

      __declspec(dllimport) long double __cdecl fmal(  long double _X,   long double _Y,   long double _Z);
      __declspec(dllimport) long double __cdecl fmaxl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl fminl(  long double _X,   long double _Y);

      __inline long double __cdecl fmodl(  long double _X,   long double _Y)
    {
        return fmod((double)_X, (double)_Y);
    }

      __inline long double __cdecl frexpl(  long double _X,   int *_Y)
    {
        return frexp((double)_X, _Y);
    }

      __declspec(dllimport) int __cdecl ilogbl(  long double _X);

      __inline long double __cdecl _hypotl(  long double _X,   long double _Y)
    {
        return _hypot((double)_X, (double)_Y);
    }

      __inline long double __cdecl hypotl(  long double _X,   long double _Y)
    {
        return _hypot((double)_X, (double)_Y);
    }

      __inline long double __cdecl ldexpl(  long double _X,   int _Y)
    {
        return ldexp((double)_X, _Y);
    }

      __declspec(dllimport) long double __cdecl lgammal(  long double _X);
      __declspec(dllimport) long long __cdecl llrintl(  long double _X);
      __declspec(dllimport) long long __cdecl llroundl(  long double _X);

      __inline long double __cdecl logl(  long double _X)
    {
        return log((double)_X);
    }

      __inline long double __cdecl log10l(  long double _X)
    {
        return log10((double)_X);
    }

      __declspec(dllimport) long double __cdecl log1pl(  long double _X);
      __declspec(dllimport) long double __cdecl log2l(  long double _X);
      __declspec(dllimport) long double __cdecl logbl(  long double _X);
      __declspec(dllimport) long __cdecl lrintl(  long double _X);
      __declspec(dllimport) long __cdecl lroundl(  long double _X);

      __inline long double __cdecl modfl(  long double _X,   long double* _Y)
    {
        double _F, _I;
        _F = modf((double)_X, &_I);
        *_Y = _I;
        return _F;
    }

      __declspec(dllimport) long double __cdecl nanl(  char const* _X);
      __declspec(dllimport) long double __cdecl nearbyintl(  long double _X);
      __declspec(dllimport) long double __cdecl nextafterl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl nexttowardl(  long double _X,   long double _Y);

      __inline long double __cdecl powl(  long double _X,   long double _Y)
    {
        return pow((double)_X, (double)_Y);
    }

      __declspec(dllimport) long double __cdecl remainderl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl remquol(  long double _X,   long double _Y,   int* _Z);
      __declspec(dllimport) long double __cdecl rintl(  long double _X);
      __declspec(dllimport) long double __cdecl roundl(  long double _X);
      __declspec(dllimport) long double __cdecl scalblnl(  long double _X,   long _Y);
      __declspec(dllimport) long double __cdecl scalbnl(  long double _X,   int _Y);

      __inline long double __cdecl sinhl(  long double _X)
    {
        return sinh((double)_X);
    }

      __inline long double __cdecl sinl(  long double _X)
    {
        return sin((double)_X);
    }

      __inline long double __cdecl sqrtl(  long double _X)
    {
        return sqrt((double)_X);
    }

      __inline long double __cdecl tanhl(  long double _X)
    {
        return tanh((double)_X);
    }

      __inline long double __cdecl tanl(  long double _X)
    {
        return tan((double)_X);
    }

      __declspec(dllimport) long double __cdecl tgammal(  long double _X);
      __declspec(dllimport) long double __cdecl truncl(  long double _X);

    



#line 961 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"



    
    
    
    
    
    

    

    
        
            extern double HUGE;
        

#line 979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j0" ". See online help for details."))   __declspec(dllimport) double __cdecl j0(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j1" ". See online help for details."))   __declspec(dllimport) double __cdecl j1(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_jn" ". See online help for details."))   __declspec(dllimport) double __cdecl jn(  int _X,   double _Y);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y0" ". See online help for details."))   __declspec(dllimport) double __cdecl y0(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y1" ". See online help for details."))   __declspec(dllimport) double __cdecl y1(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_yn" ". See online help for details."))   __declspec(dllimport) double __cdecl yn(  int _X,   double _Y);
    #line 987 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

#line 989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


#pragma warning(pop)

} __pragma(pack(pop))
#line 12 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"




#line 17 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"









#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"







#pragma once



__pragma(pack(push, 8)) extern "C" {



#line 17 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"




#line 22 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
    
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"


    
        
    



#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
#line 34 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"














    








#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"




#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"

    
        


            #pragma detect_mismatch("_CRT_STDIO_ISO_WIDE_SPECIFIERS", "0")
        #line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
    #line 71 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
#line 72 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"






#line 79 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"


    
    
       
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_printf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }

    
    
       
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_scanf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }
#line 99 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"



#line 103 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"



















} __pragma(pack(pop))
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

__pragma(pack(push, 8)) extern "C" {








    
    typedef struct _iobuf
    {
        void* _Placeholder;
    } FILE;
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

__declspec(dllimport) FILE* __cdecl __acrt_iob_func(unsigned _Ix);










    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl fgetwc(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fgetwchar(void);

    
    __declspec(dllimport) wint_t __cdecl fputwc(
             wchar_t _Character,
          FILE*   _Stream);

    
    __declspec(dllimport) wint_t __cdecl _fputwchar(
          wchar_t _Character
        );

     
    __declspec(dllimport) wint_t __cdecl getwc(
          FILE* _Stream
        );

     
    __declspec(dllimport) wint_t __cdecl getwchar(void);


    
     
    __declspec(dllimport) wchar_t* __cdecl fgetws(
          wchar_t* _Buffer,
                                  int      _BufferCount,
                               FILE*    _Stream
        );

    
    __declspec(dllimport) int __cdecl fputws(
           wchar_t const* _Buffer,
          FILE*          _Stream
        );

    
     
    __declspec(dllimport) wchar_t* __cdecl _getws_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   wchar_t* __cdecl _getws_s( wchar_t (&_Buffer)[_Size]) throw() { return _getws_s(_Buffer, _Size); } }
#line 100 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __declspec(dllimport) wint_t __cdecl putwc(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl putwchar(
          wchar_t _Character
        );

    
    __declspec(dllimport) int __cdecl _putws(
          wchar_t const* _Buffer
        );

    
    __declspec(dllimport) wint_t __cdecl ungetwc(
             wint_t _Character,
          FILE*  _Stream
        );

     
    __declspec(dllimport) FILE * __cdecl _wfdopen(
            int            _FileHandle,
          wchar_t const* _Mode
        );

      
    __declspec(dllimport) FILE* __cdecl _wfopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode
        );

    
    __declspec(dllimport) errno_t __cdecl _wfopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode
        );

     
    
    __declspec(dllimport) FILE* __cdecl _wfreopen(
           wchar_t const* _FileName,
           wchar_t const* _Mode,
          FILE*          _OldStream
        );

    
    __declspec(dllimport) errno_t __cdecl _wfreopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode,
                            FILE*          _OldStream
        );

     
    __declspec(dllimport) FILE* __cdecl _wfsopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode,
            int            _ShFlag
        );

    __declspec(dllimport) void __cdecl _wperror(
          wchar_t const* _ErrorMessage
        );

    

         
        __declspec(dllimport) FILE* __cdecl _wpopen(
              wchar_t const* _Command,
              wchar_t const* _Mode
            );

    #line 178 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    __declspec(dllimport) int __cdecl _wremove(
          wchar_t const* _FileName
        );

    
    

     
    __declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wtempnam(
          wchar_t const* _Directory,
          wchar_t const* _FilePrefix
        );

    

     
    
    __declspec(dllimport) errno_t __cdecl _wtmpnam_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl _wtmpnam_s( wchar_t (&_Buffer)[_Size]) throw() { return _wtmpnam_s(_Buffer, _Size); } }
#line 206 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __declspec(dllimport)  wchar_t* __cdecl _wtmpnam(  wchar_t *_Buffer);
#line 212 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl _fgetwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fputwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _getwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _putwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _ungetwc_nolock(
             wint_t _Character,
          FILE*  _Stream
        );

    



#line 253 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    





    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 305 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 309 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vfwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 319 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 323 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 334 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vfwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 354 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 356 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 367 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 371 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 381 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    #line 385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 395 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 399 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 408 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 412 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 426 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vwprintf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 437 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    #line 441 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 457 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 466 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 470 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 480 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 489 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl fwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 498 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 507 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl fwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    

#line 537 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 546 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 548 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 558 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 567 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 576 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 585 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 594 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 603 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl wprintf(
            wchar_t const* const _Format,
        ...)
    

#line 611 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 620 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 629 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 638 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl wprintf_s(
                wchar_t const* const _Format,
            ...)
    

#line 648 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 657 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 659 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 668 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 677 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_p(
            wchar_t const* const _Format,
        ...)
    

#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vfwscanf_l(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 726 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vfwscanf(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 736 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwscanf_s_l(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 751 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 757 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vfwscanf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 769 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 773 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 775 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    __inline int __cdecl _vwscanf_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 784 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 788 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vwscanf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 797 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    #line 801 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwscanf_s_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 811 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 815 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vwscanf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 826 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    #line 830 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 832 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _fwscanf_l(
                                         FILE*          const _Stream,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 842 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 851 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

      
    __inline int __cdecl fwscanf(
                               FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 860 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 869 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwscanf_s_l(
                                           FILE*          const _Stream,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 879 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 888 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl fwscanf_s(
                                     FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    

#line 899 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 908 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 910 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _wscanf_l(
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 919 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 928 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

      
    __inline int __cdecl wscanf(
            wchar_t const* const _Format,
        ...)
    

#line 936 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 945 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wscanf_s_l(
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 954 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 963 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl wscanf_s(
                wchar_t const* const _Format,
            ...)
    

#line 973 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 982 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 984 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    
    
    
    
    
        



    

#line 1000 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_s(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vsnwprintf_s(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_p(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     
    __inline int __cdecl _vsnwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
                                                     va_list              _ArgList
        )
    

#line 1058 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(push)
    #pragma warning(disable: 4793)

     
    
    __inline int __cdecl _vsnwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1083 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vsnwprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1091 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vsnwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    #line 1108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __inline   int __cdecl _snwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, ...);  __inline   int __cdecl _vsnwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, va_list _Args);
#line 1117 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(pop)

     
     
    __inline int __cdecl _vsnwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
                                                     va_list        _ArgList
        )
    

#line 1131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1138 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, va_list _ArgList) throw() { return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1160 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1168 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1180 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1197 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)
    }
    #line 1204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl __vswprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1216 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1220 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
                                         va_list              _ArgList
        )
    

#line 1231 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
    }
    #line 1235 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl vswprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1247 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1251 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    

#line 1264 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1272 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        __inline int __cdecl vswprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
            )
    

#line 1285 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    #line 1289 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1291 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl vswprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1299 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    

#line 1312 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1320 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
                                                      va_list              _ArgList
        )
    

#line 1332 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1336 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1347 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1355 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 1365 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vscwprintf_l(_Format, 0, _ArgList);
    }
    #line 1369 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1380 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1388 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 1398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vscwprintf_p_l(_Format, 0, _ArgList);
    }
    #line 1402 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl __swprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1413 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = __vswprintf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1434 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
        ...)
    

#line 1453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = __vswprintf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1462 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl swprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1473 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1482 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(push)
    
    
    #pragma warning(disable:4793 4996)

     __inline   int __cdecl __swprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, ...);  __inline   int __cdecl __vswprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, va_list _Args);
#line 1496 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __inline   int __cdecl _swprintf(   wchar_t *_Buffer,     wchar_t const* _Format, ...);  __inline   int __cdecl _vswprintf(   wchar_t *_Buffer,     wchar_t const* _Format, va_list _Args);
#line 1503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(pop)

     
    
    __inline int __cdecl _swprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    

#line 1517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        __inline int __cdecl swprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
            ...)
    

#line 1538 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1547 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1549 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl swprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1556 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    

#line 1568 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1577 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
        ...)
    

#line 1588 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1597 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1609 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1618 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1629 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1638 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
        ...)
    

#line 1650 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1664 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
        ...)
    

#line 1675 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1689 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1702 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1711 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1723 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1732 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl _snwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _scwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1749 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1758 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf(
            wchar_t const* const _Format,
        ...)
    

#line 1767 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1776 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1786 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1795 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf_p(
            wchar_t const* const _Format,
        ...)
    

#line 1804 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_p_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1813 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
        #pragma warning(push)
        #pragma warning(disable: 4141 4412 4793 4996 6054)

        

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int swprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
                #pragma warning(suppress: 28719)
                _Result = vswprintf(_Buffer, 2147483647, _Format, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int __cdecl vswprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                              va_list              _ArgList
                ) throw()
            {
                #pragma warning(suppress: 28719)
                return vswprintf(_Buffer, 2147483647, _Format, _ArgList);
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int _swprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
                _Result = _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int __cdecl _vswprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                                                        va_list              _ArgList
                ) throw()
            {
                return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
            }

        #line 1874 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

        #pragma warning(pop)
    #line 1877 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    




#line 1884 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vswscanf(
                                            unsigned __int64 _Options,
                  wchar_t const*   _Buffer,
                                            size_t           _BufferCount,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

     
    
    __inline int __cdecl _vswscanf_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 1912 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1918 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl vswscanf(
                                 wchar_t const* _Buffer,
            wchar_t const* _Format,
                                      va_list        _ArgList
        )
    

#line 1929 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    #line 1933 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswscanf_s_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 1945 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1951 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        
        __inline int __cdecl vswscanf_s(
                                     wchar_t const* const _Buffer,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 1964 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    #line 1968 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1970 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl vswscanf_s(  wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswscanf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1978 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vsnwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
                                               va_list              _ArgList
        )
    

#line 1991 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    #line 1997 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vsnwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
                                                 va_list              _ArgList
        )
    

#line 2010 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    #line 2016 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _swscanf_l(
                                          wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                        _locale_t            _Locale,
        ...)
    

#line 2027 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2036 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
      
    __inline int __cdecl swscanf(
                                wchar_t const* const _Buffer,
            wchar_t const* const _Format,
        ...)
    

#line 2046 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2055 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swscanf_s_l(
                                            wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 2066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2075 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        
        __inline int __cdecl swscanf_s(
                                      wchar_t const* const _Buffer,
                wchar_t const* const _Format,
            ...)
    

#line 2087 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 2096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 2098 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 2110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2124 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwscanf(
            wchar_t const* const _Buffer,
                                      size_t         const _BufferCount,
                wchar_t const* const _Format,
        ...)
    

#line 2135 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2149 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 2161 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2170 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwscanf_s(
             wchar_t const* const _Buffer,
                                       size_t         const _BufferCount,
               wchar_t const* const _Format,
        ...)
    

#line 2181 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    


#line 2195 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

__pragma(pack(push, 8)) extern "C" {































    
#line 48 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"















    
    
#line 66 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


typedef __int64 fpos_t;





    
    __declspec(dllimport) errno_t __cdecl _get_stream_buffer_pointers(
               FILE*   _Stream,
          char*** _Base,
          char*** _Pointer,
          int**   _Count
        );


    
    
    
    
    
    

        
        __declspec(dllimport) errno_t __cdecl clearerr_s(
              FILE* _Stream
            );

        
        __declspec(dllimport) errno_t __cdecl fopen_s(
              FILE**      _Stream,
                                 char const* _FileName,
                                 char const* _Mode
            );

        
         
        __declspec(dllimport) size_t __cdecl fread_s(
                void*  _Buffer,
                                    size_t _BufferSize,
                                                                            size_t _ElementSize,
                                                                            size_t _ElementCount,
                                                                         FILE*  _Stream
            );

        
        __declspec(dllimport) errno_t __cdecl freopen_s(
              FILE**      _Stream,
                                 char const* _FileName,
                                 char const* _Mode,
                                FILE*       _OldStream
            );

         
        __declspec(dllimport) char* __cdecl gets_s(
              char*   _Buffer,
                               rsize_t _Size
            );

        
        __declspec(dllimport) errno_t __cdecl tmpfile_s(
                FILE** _Stream
            );

         
        
        __declspec(dllimport) errno_t __cdecl tmpnam_s(
              char*   _Buffer,
                               rsize_t _Size
            );

    #line 139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) void __cdecl clearerr(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fclose(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fcloseall(void);

     
    __declspec(dllimport) FILE* __cdecl _fdopen(
            int         _FileHandle,
          char const* _Mode
        );

     
    __declspec(dllimport) int __cdecl feof(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl ferror(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl fflush(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fgetc(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fgetchar(void);

     
    
    __declspec(dllimport) int __cdecl fgetpos(
          FILE*   _Stream,
            fpos_t* _Position
        );

     
    
    __declspec(dllimport) char* __cdecl fgets(
          char* _Buffer,
                               int   _MaxCount,
                            FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl _fileno(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _flushall(void);

      
    __declspec(dllimport) FILE* __cdecl fopen(
          char const* _FileName,
          char const* _Mode
        );


     
    
    __declspec(dllimport) int __cdecl fputc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fputchar(
          int _Character
        );

     
    
    __declspec(dllimport) int __cdecl fputs(
           char const* _Buffer,
          FILE*       _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fread(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

     
      
    __declspec(dllimport) FILE* __cdecl freopen(
           char const* _FileName,
           char const* _Mode,
          FILE*       _Stream
        );

     
    __declspec(dllimport) FILE* __cdecl _fsopen(
          char const* _FileName,
          char const* _Mode,
            int         _ShFlag
        );

     
    
    __declspec(dllimport) int __cdecl fsetpos(
          FILE*         _Stream,
             fpos_t const* _Position
        );

     
    
    __declspec(dllimport) int __cdecl fseek(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

     
    
    __declspec(dllimport) int __cdecl _fseeki64(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
     
    __declspec(dllimport) long __cdecl ftell(
          FILE* _Stream
        );

     
     
    __declspec(dllimport) __int64 __cdecl _ftelli64(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fwrite(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

     
     
    __declspec(dllimport) int __cdecl getc(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl getchar(void);

     
    __declspec(dllimport) int __cdecl _getmaxstdio(void);

    extern "C++" { template <size_t _Size> inline char* __cdecl gets_s(char (&_Buffer)[_Size]) throw() { return gets_s(_Buffer, _Size); } }
#line 313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __declspec(dllimport) int __cdecl _getw(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl perror(
          char const* _ErrorMessage
        );

    

         
        
        __declspec(dllimport) int __cdecl _pclose(
              FILE* _Stream
            );

         
        __declspec(dllimport) FILE* __cdecl _popen(
              char const* _Command,
              char const* _Mode
            );

    #line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __declspec(dllimport) int __cdecl putc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl putchar(
          int _Character
        );

    
    __declspec(dllimport) int __cdecl puts(
          char const* _Buffer
        );

     
    
    __declspec(dllimport) int __cdecl _putw(
             int   _Word,
          FILE* _Stream
        );

    __declspec(dllimport) int __cdecl remove(
          char const* _FileName
        );

     
    __declspec(dllimport) int __cdecl rename(
          char const* _OldFileName,
          char const* _NewFileName
        );

    __declspec(dllimport) int __cdecl _unlink(
          char const* _FileName
        );

    

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_unlink" ". See online help for details."))
        __declspec(dllimport) int __cdecl unlink(
              char const* _FileName
            );

    #line 385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) void __cdecl rewind(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _rmtmp(void);

    
    __declspec(dllimport) void __cdecl setbuf(
                                                      FILE* _Stream,
            char* _Buffer
        );

    
    __declspec(dllimport) int __cdecl _setmaxstdio(
          int _Maximum
        );

     
    
    __declspec(dllimport) int __cdecl setvbuf(
                               FILE*  _Stream,
            char*  _Buffer,
                                  int    _Mode,
                                  size_t _Size
        );

    


#line 417 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __declspec(dllimport) __declspec(allocator) char* __cdecl _tempnam(
          char const* _DirectoryName,
          char const* _FilePrefix
        );

    

#line 427 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __declspec(dllimport) FILE* __cdecl tmpfile(void);

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl tmpnam_s( char (&_Buffer)[_Size]) throw() { return tmpnam_s(_Buffer, _Size); } }
#line 436 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

#pragma warning(push)
#pragma warning(disable: 28726) 
 __declspec(dllimport)  char* __cdecl tmpnam(  char *_Buffer);
#line 444 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
#pragma warning(pop)

     
    
    __declspec(dllimport) int __cdecl ungetc(
             int   _Character,
          FILE* _Stream
        );



    
    
    
    
    
    __declspec(dllimport) void __cdecl _lock_file(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl _unlock_file(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fclose_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fflush_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fgetc_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fputc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fread_nolock(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

    
     
    __declspec(dllimport) size_t __cdecl _fread_nolock_s(
          void*  _Buffer,
                              size_t _BufferSize,
                                                                      size_t _ElementSize,
                                                                      size_t _ElementCount,
                                                                   FILE*  _Stream
        );

    
    __declspec(dllimport) int __cdecl _fseek_nolock(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

    
    __declspec(dllimport) int __cdecl _fseeki64_nolock(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
    __declspec(dllimport) long __cdecl _ftell_nolock(
          FILE* _Stream
        );

     
    __declspec(dllimport) __int64 __cdecl _ftelli64_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fwrite_nolock(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

    
    __declspec(dllimport) int __cdecl _getc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _putc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _ungetc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    
    
    



    













#line 582 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    __declspec(dllimport) int* __cdecl __p__commode(void);

    


        
    #line 592 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    

#line 599 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfprintf_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 640 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vfprintf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 654 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 658 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_s_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 669 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 673 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vfprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 689 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 691 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_p_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 702 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 706 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 716 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    #line 720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 730 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 734 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 743 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 747 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 757 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 761 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vprintf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 772 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    #line 776 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 778 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 788 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 792 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 801 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 805 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 815 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 824 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl fprintf(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 833 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 842 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) int __cdecl _set_printf_count_output(
          int _Value
        );

    __declspec(dllimport) int __cdecl _get_printf_count_output(void);

    
    __inline int __cdecl _fprintf_s_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 858 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 867 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl fprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
            ...)
    

#line 878 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 887 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 889 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_p_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 899 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 908 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 917 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 926 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 935 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 944 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl printf(
            char const* const _Format,
        ...)
    

#line 952 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 961 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 970 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl printf_s(
                char const* const _Format,
            ...)
    

#line 989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 998 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1000 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1009 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1018 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_p(
            char const* const _Format,
        ...)
    

#line 1026 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1035 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _Arglist
        );

    
    __inline int __cdecl _vfscanf_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1060 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 1066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vfscanf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1076 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 1080 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfscanf_s_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1091 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 1097 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    

        
        __inline int __cdecl vfscanf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 1110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 1114 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1116 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscanf_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1126 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 1130 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vscanf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    #line 1143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscanf_s_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1153 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 1157 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vscanf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 1168 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    #line 1172 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1174 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _fscanf_l(
                                         FILE*       const _Stream,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 1184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1193 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl fscanf(
                               FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 1202 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1211 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fscanf_s_l(
                                           FILE*       const _Stream,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 1221 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1230 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl fscanf_s(
                                     FILE*       const _Stream,
                char const* const _Format,
            ...)
    

#line 1241 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scanf_l(
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 1261 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1270 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl scanf(
            char const* const _Format,
        ...)
    

#line 1278 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scanf_s_l(
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 1296 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1305 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl scanf_s(
                char const* const _Format,
            ...)
    

#line 1315 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1324 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1326 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_s(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsnprintf_s(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_p(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     
    __inline int __cdecl _vsnprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
                                                     va_list           _ArgList
        )
    

#line 1387 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1395 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf(
            char*       const _Buffer,
                                                 size_t      const _BufferCount,
                          char const* const _Format,
                                                    va_list           _ArgList
        )
    

#line 1407 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1414 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    








#line 1425 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl vsnprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    

#line 1437 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1445 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _vsprintf_l(
           char*       const _Buffer,
                                    char const* const _Format,
                                  _locale_t   const _Locale,
                                         va_list           _ArgList
        )
    

#line 1457 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
        #pragma warning(pop)
    }
    #line 1464 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl vsprintf(
           char*       const _Buffer,
               char const* const _Format,
                                         va_list           _ArgList
        )
    

#line 1475 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1482 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    

#line 1495 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl vsprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
            )
    

#line 1517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    #line 1521 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline   int __cdecl vsprintf_s( char (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1529 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1531 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    

#line 1544 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1552 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
                                                      va_list           _ArgList
        )
    

#line 1564 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1568 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
                                                          va_list          _ArgList
        )
    

#line 1582 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsnprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1590 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    

#line 1603 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    #line 1607 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1616 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl vsnprintf_s(
               char*       const _Buffer,
                                                           size_t      const _BufferCount,
                                                           size_t      const _MaxCount,
                                    char const* const _Format,
                                                              va_list           _ArgList
            )
    

#line 1631 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        }
    #line 1635 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline   int __cdecl vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1646 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1656 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1664 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _vscprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1673 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vscprintf_l(_Format, 0, _ArgList);
    }
    #line 1677 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1687 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1695 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _vscprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1704 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vscprintf_p_l(_Format, 0, _ArgList);
    }
    #line 1708 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vsnprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1728 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
                                       va_list           _ArgList
        )
    

#line 1740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1744 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _sprintf_l(
                  char*       const _Buffer,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1755 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsprintf_l(_Buffer, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1769 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl sprintf(
           char*       const _Buffer,
               char const* const _Format,
        ...)
    

#line 1779 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsprintf_l(_Buffer, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1793 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(push)
    #pragma warning(disable: 4996)
    #pragma warning(disable: 28719) 
    #pragma warning(disable: 28726) 
       int __cdecl sprintf(  char *_Buffer,  char const* _Format, ...);    int __cdecl vsprintf(  char *_Buffer,  char const* _Format, va_list _Args);
#line 1804 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    #pragma warning(pop)

     
    
    __inline int __cdecl _sprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    

#line 1817 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1826 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl sprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
            ...)
    

#line 1839 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1848 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1850 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl sprintf_s( char (&_Buffer)[_Size],     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1857 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _sprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    

#line 1869 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1878 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _sprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
        ...)
    

#line 1889 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1898 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _snprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
        ...)
    

#line 1910 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1924 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    








#line 1935 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl snprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
        ...)
    

#line 1946 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    #pragma warning(suppress:28719)    
        _Result = vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1956 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                           char const* const _Format,
        ...)
    

#line 1967 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    #pragma warning(suppress:28719)    
        _Result = _vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1977 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        int __cdecl _snprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, ...);     int __cdecl _vsnprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, va_list _Args);
#line 1986 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1998 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2007 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
        ...)
    

#line 2018 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2027 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
        ...)
    

#line 2040 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2049 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
        ...)
    

#line 2061 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2070 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl _snprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } __pragma(warning(pop)); }
#line 2078 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 2087 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scprintf(
            char const* const _Format,
        ...)
    

#line 2104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 2122 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scprintf_p(
            char const* const _Format,
        ...)
    

#line 2139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_p(_Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2148 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vsscanf(
                                            unsigned __int64 _Options,
                  char const*      _Buffer,
                                            size_t           _BufferCount,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vsscanf_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 2173 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 2179 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vsscanf(
                                 char const* const _Buffer,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 2189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    #line 2193 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vsscanf_s_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 2204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 2210 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        #pragma warning(push)
        #pragma warning(disable:6530)

        
        __inline int __cdecl vsscanf_s(
                                     char const* const _Buffer,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 2225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    #line 2229 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline int __cdecl vsscanf_s(  char const (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsscanf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 2236 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        #pragma warning(pop)

    #line 2240 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _sscanf_l(
                                          char const* const _Buffer,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 2250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2259 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl sscanf(
                                char const* const _Buffer,
            char const* const _Format,
        ...)
    

#line 2268 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2277 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _sscanf_s_l(
                                            char const* const _Buffer,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 2287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2296 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl sscanf_s(
                                      char const* const _Buffer,
                char const* const _Format,
            ...)
    

#line 2307 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

            #pragma warning(push)
            #pragma warning(disable: 4996) 
            _Result = vsscanf_s(_Buffer, _Format, _ArgList);
            #pragma warning(pop)

            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 2321 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 2323 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(push)
    #pragma warning(disable:6530)

     
    __inline int __cdecl _snscanf_l(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 2337 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _snscanf(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                      char const* const _Format,
        ...)
    

#line 2360 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2373 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    
    __inline int __cdecl _snscanf_s_l(
              char const* const _Buffer,
                                              size_t      const _BufferCount,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 2385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _snscanf_s(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                    char const* const _Format,
        ...)
    

#line 2408 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2421 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(pop)

    

#line 2427 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    
    
    
    
    

        

        


#line 2443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_tempnam" ". See online help for details."))
        __declspec(dllimport) char* __cdecl tempnam(
              char const* _Directory,
              char const* _FilePrefix
            );

        

#line 2453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcloseall" ". See online help for details.")) __declspec(dllimport) int   __cdecl fcloseall(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fdopen" ". See online help for details."))    __declspec(dllimport) FILE* __cdecl fdopen(  int _FileHandle,   char const* _Format);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fgetchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fgetchar(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fileno" ". See online help for details."))    __declspec(dllimport) int   __cdecl fileno(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_flushall" ". See online help for details."))  __declspec(dllimport) int   __cdecl flushall(void);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fputchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fputchar(  int _Ch);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_getw" ". See online help for details."))      __declspec(dllimport) int   __cdecl getw(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putw" ". See online help for details."))      __declspec(dllimport) int   __cdecl putw(  int _Ch,   FILE* _Stream);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_rmtmp" ". See online help for details."))     __declspec(dllimport) int   __cdecl rmtmp(void);

    #line 2465 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
#line 2466 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



} __pragma(pack(pop))
#line 18 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"








#pragma once



__pragma(pack(push, 8)) extern "C" {





































#line 52 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _calloc_base(
      size_t _Count,
      size_t _Size
    );

     
__declspec(dllimport)  __declspec(allocator) __declspec(restrict) 
void* __cdecl calloc(
      __declspec(guard(overflow)) size_t _Count,
      __declspec(guard(overflow)) size_t _Size
    );

 
__declspec(dllimport) int __cdecl _callnewh(
      size_t _Size
    );

     
__declspec(dllimport) __declspec(allocator) 
void* __cdecl _expand(
                void*  _Block,
      __declspec(guard(overflow)) size_t _Size
    );

__declspec(dllimport)
void __cdecl _free_base(
        void* _Block
    );

__declspec(dllimport) 
void __cdecl free(
        void* _Block
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _malloc_base(
      size_t _Size
    );

     
__declspec(dllimport) __declspec(allocator)  __declspec(restrict) 
void* __cdecl malloc(
      __declspec(guard(overflow)) size_t _Size
    );

 
__declspec(dllimport)
size_t __cdecl _msize_base(
      void* _Block
    );

 
__declspec(dllimport) 
size_t __cdecl _msize(
      void* _Block
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _realloc_base(
         void*  _Block,
                                 size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict) 
void* __cdecl realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _recalloc_base(
        void*  _Block,
                                size_t _Count,
                                size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size
    );

__declspec(dllimport)
void __cdecl _aligned_free(
        void* _Block
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_malloc(
      __declspec(guard(overflow)) size_t _Size,
                         size_t _Alignment
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_malloc(
      __declspec(guard(overflow)) size_t _Size,
                         size_t _Alignment,
                         size_t _Offset
    );

 
__declspec(dllimport)
size_t __cdecl _aligned_msize(
      void*  _Block,
               size_t _Alignment,
               size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment,
                                size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment,
                                size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment
    );


















#line 225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"










#pragma once




__pragma(pack(push, 8)) extern "C" {


    typedef int (__cdecl* _CoreCrtSecureSearchSortCompareFunction)(void*, void const*, void const*);
    typedef int (__cdecl* _CoreCrtNonSecureSearchSortCompareFunction)(void const*, void const*);




     
    __declspec(dllimport) void* __cdecl bsearch_s(
                                                        void const* _Key,
          void const* _Base,
                                                        rsize_t     _NumOfElements,
                                                        rsize_t     _SizeOfElements,
                            _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                    void*       _Context
        );

    __declspec(dllimport) void __cdecl qsort_s(
          void*   _Base,
                                                             rsize_t _NumOfElements,
                                                             rsize_t _SizeOfElements,
                             _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                         void*   _Context
        );

#line 44 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"



 
__declspec(dllimport) void* __cdecl bsearch(
                                                    void const* _Key,
      void const* _Base,
                                                    size_t      _NumOfElements,
                                                    size_t      _SizeOfElements,
                     _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

__declspec(dllimport) void __cdecl qsort(
      void*  _Base,
                                                         size_t _NumOfElements,
                                                         size_t _SizeOfElements,
                     _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

 
__declspec(dllimport) void* __cdecl _lfind_s(
                                                       void const*   _Key,
      void const*   _Base,
                                                    unsigned int* _NumOfElements,
                                                       size_t        _SizeOfElements,
                             _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                       void*         _Context
    );

 
__declspec(dllimport) void* __cdecl _lfind(
                                                       void const*   _Key,
      void const*   _Base,
                                                    unsigned int* _NumOfElements,
                                                       unsigned int  _SizeOfElements,
                          _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

 
__declspec(dllimport) void* __cdecl _lsearch_s(
                                                             void const*   _Key,
      void*         _Base,
                                                          unsigned int* _NumOfElements,
                                                             size_t        _SizeOfElements,
                                   _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                             void*         _Context
    );

 
__declspec(dllimport) void* __cdecl _lsearch(
                                                             void const*   _Key,
      void*         _Base,
                                                          unsigned int* _NumOfElements,
                                                             unsigned int  _SizeOfElements,
                                _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );




















































































#line 185 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"





      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lfind" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lfind(
                                                           void const*   _Key,
          void const*   _Base,
                                                        unsigned int* _NumOfElements,
                                                           unsigned int  _SizeOfElements,
                              _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lsearch" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lsearch(
                                                                void const*   _Key,
          void*         _Base,
                                                             unsigned int* _NumOfElements,
                                                                unsigned int  _SizeOfElements,
                                   _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
        );

#line 209 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"



} __pragma(pack(pop))
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"








#pragma once



__pragma(pack(push, 8)) extern "C" {


































     
    
    __declspec(dllimport) errno_t __cdecl _itow_s(
                                  int      _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _itow_s(  int _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _itow_s(_Value, _Buffer, _Size, _Radix); } }
#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _itow( int _Value,   wchar_t *_Buffer,  int _Radix);
#line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     
    
    __declspec(dllimport) errno_t __cdecl _ltow_s(
                                  long     _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltow_s(  long _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _ltow_s(_Value, _Buffer, _Size, _Radix); } }
#line 86 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _ltow( long _Value,   wchar_t *_Buffer,  int _Radix);
#line 93 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

    
    __declspec(dllimport) errno_t __cdecl _ultow_s(
                                  unsigned long _Value,
          wchar_t*      _Buffer,
                                  size_t        _BufferCount,
                                  int           _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultow_s(  unsigned long _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _ultow_s(_Value, _Buffer, _Size, _Radix); } }
#line 108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _ultow( unsigned long _Value,   wchar_t *_Buffer,  int _Radix);
#line 115 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     
    __declspec(dllimport) double __cdecl wcstod(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) double __cdecl _wcstod_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long __cdecl wcstol(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) long __cdecl _wcstol_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long long __cdecl wcstoll(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) long long __cdecl _wcstoll_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned long __cdecl wcstoul(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned long __cdecl _wcstoul_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned long long __cdecl wcstoull(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned long long __cdecl _wcstoull_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long double __cdecl wcstold(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) long double __cdecl _wcstold_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) float __cdecl wcstof(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) float __cdecl _wcstof_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) double __cdecl _wtof(
          wchar_t const* _String
        );

     
    __declspec(dllimport) double __cdecl _wtof_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) int __cdecl _wtoi(
          wchar_t const* _String
        );

     
    __declspec(dllimport) int __cdecl _wtoi_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) long __cdecl _wtol(
          wchar_t const* _String
        );

     
    __declspec(dllimport) long __cdecl _wtol_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) long long __cdecl _wtoll(
          wchar_t const* _String
        );

     
    __declspec(dllimport) long long __cdecl _wtoll_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

    
    __declspec(dllimport) errno_t __cdecl _i64tow_s(
                                  __int64  _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    
    __declspec(dllimport) wchar_t* __cdecl _i64tow(
                            __int64  _Value,
            wchar_t* _Buffer,
                            int      _Radix
        );

    
    __declspec(dllimport) errno_t __cdecl _ui64tow_s(
                                  unsigned __int64 _Value,
          wchar_t*         _Buffer,
                                  size_t           _BufferCount,
                                  int              _Radix
        );

    
    __declspec(dllimport) wchar_t* __cdecl _ui64tow(
                            unsigned __int64 _Value,
            wchar_t*         _Buffer,
                            int              _Radix
        );

     
    __declspec(dllimport) __int64 __cdecl _wtoi64(
          wchar_t const* _String
        );

     
    __declspec(dllimport) __int64 __cdecl _wtoi64_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) __int64 __cdecl _wcstoi64(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) __int64 __cdecl _wcstoi64_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

    
    

     
     
    __declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wfullpath(
          wchar_t*       _Buffer,
                                    wchar_t const* _Path,
                                      size_t         _BufferCount
        );

    

    
    __declspec(dllimport) errno_t __cdecl _wmakepath_s(
          wchar_t*       _Buffer,
                                  size_t         _BufferCount,
                            wchar_t const* _Drive,
                            wchar_t const* _Dir,
                            wchar_t const* _Filename,
                            wchar_t const* _Ext
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmakepath_s(wchar_t (&_Buffer)[_Size],   wchar_t const* _Drive,   wchar_t const* _Dir,   wchar_t const* _Filename,   wchar_t const* _Ext) throw() { return _wmakepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
#line 361 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) void __cdecl _wmakepath(  wchar_t *_Buffer,  wchar_t const* _Drive,  wchar_t const* _Dir,  wchar_t const* _Filename,  wchar_t const* _Ext);
#line 373 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"
#pragma warning(pop)

    __declspec(dllimport) void __cdecl _wperror(
          wchar_t const* _ErrorMessage
        );

    
    __declspec(dllimport) void __cdecl _wsplitpath(
                            wchar_t const* _FullPath,
            wchar_t*       _Drive,
            wchar_t*       _Dir,
            wchar_t*       _Filename,
            wchar_t*       _Ext
        );

    __declspec(dllimport) errno_t __cdecl _wsplitpath_s(
                                      wchar_t const* _FullPath,
             wchar_t*       _Drive,
                                        size_t         _DriveCount,
               wchar_t*       _Dir,
                                        size_t         _DirCount,
          wchar_t*       _Filename,
                                        size_t         _FilenameCount,
               wchar_t*       _Ext,
                                        size_t         _ExtCount
        );

    extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _wsplitpath_s(   wchar_t const* _Path,   wchar_t (&_Drive)[_DriveSize],   wchar_t (&_Dir)[_DirSize],   wchar_t (&_Name)[_NameSize],   wchar_t (&_Ext)[_ExtSize] ) throw() { return _wsplitpath_s(_Path, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }
#line 404 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"



    

        
        

        
        __declspec(dllimport) errno_t __cdecl _wdupenv_s(
                wchar_t**      _Buffer,
                                                                                size_t*        _BufferCount,
                                                                                   wchar_t const* _VarName
            );

        

          
        __declspec(dllimport) wchar_t* __cdecl _wgetenv(
              wchar_t const* _VarName
            );

         
        
        __declspec(dllimport) errno_t __cdecl _wgetenv_s(
                                         size_t*        _RequiredCount,
              wchar_t*       _Buffer,
                                          size_t         _BufferCount,
                                        wchar_t const* _VarName
            );

        extern "C++" { template <size_t _Size> inline   errno_t __cdecl _wgetenv_s(  size_t* _RequiredCount, wchar_t (&_Buffer)[_Size],   wchar_t const* _VarName) throw() { return _wgetenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
#line 442 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

         
        __declspec(dllimport) int __cdecl _wputenv(
              wchar_t const* _EnvString
            );

        
        __declspec(dllimport) errno_t __cdecl _wputenv_s(
              wchar_t const* _Name,
              wchar_t const* _Value
            );

        __declspec(dllimport) errno_t __cdecl _wsearchenv_s(
                                    wchar_t const* _Filename,
                                    wchar_t const* _VarName,
              wchar_t*       _Buffer,
                                      size_t         _BufferCount
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl _wsearchenv_s(  wchar_t const* _Filename,   wchar_t const* _VarName, wchar_t (&_ResultPath)[_Size]) throw() { return _wsearchenv_s(_Filename, _VarName, _ResultPath, _Size); } }
#line 467 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

         __declspec(dllimport) void __cdecl _wsearchenv( wchar_t const* _Filename,  wchar_t const* _VarName,   wchar_t *_ResultPath);
#line 474 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

        __declspec(dllimport) int __cdecl _wsystem(
              wchar_t const* _Command
            );

    #line 480 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"
#line 481 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"



} __pragma(pack(pop))
#line 15 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"







#pragma once


#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 12 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"

__pragma(pack(push, 8)) extern "C" {









    
    



#line 29 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"









































#line 71 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"


    


        
    #line 78 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"
#line 79 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"


    
        
    #line 84 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"
#line 85 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"



} __pragma(pack(pop))
#line 16 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

__pragma(pack(push, 8)) extern "C" {




    
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"









__declspec(dllimport) void __cdecl _swab(
        char* _Buf1,
        char* _Buf2,
                                                                  int   _SizeInBytes
    );













    __declspec(dllimport) __declspec(noreturn) void __cdecl exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl _exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl _Exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl quick_exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl abort(void);
#line 57 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"





__declspec(dllimport) unsigned int __cdecl _set_abort_behavior(
      unsigned int _Flags,
      unsigned int _Mask
    );




    

    typedef int (__cdecl* _onexit_t)(void);
    


#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


    
    
#line 82 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

























































    int       __cdecl atexit(void (__cdecl*)(void));
    _onexit_t __cdecl _onexit(  _onexit_t _Func);
#line 142 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

int __cdecl at_quick_exit(void (__cdecl*)(void));









    
    typedef void (__cdecl* _purecall_handler)(void);

    
    typedef void (__cdecl* _invalid_parameter_handler)(
        wchar_t const*,
        wchar_t const*,
        wchar_t const*,
        unsigned int,
        uintptr_t
        );

    
     _purecall_handler __cdecl _set_purecall_handler(
          _purecall_handler _Handler
        );

     _purecall_handler __cdecl _get_purecall_handler(void);

    
    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_invalid_parameter_handler(
          _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);

    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_thread_local_invalid_parameter_handler(
          _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_thread_local_invalid_parameter_handler(void);
#line 185 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"












#line 198 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"









 __declspec(dllimport) int __cdecl _set_error_mode(  int _Mode);




    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

    __declspec(dllimport) unsigned long* __cdecl __doserrno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_doserrno(  unsigned long _Value);
    __declspec(dllimport) errno_t __cdecl _get_doserrno(  unsigned long * _Value);

    
    __declspec(dllimport)  char** __cdecl __sys_errlist(void);
    

    __declspec(dllimport)  int * __cdecl __sys_nerr(void);
    

    __declspec(dllimport) void __cdecl perror(  char const* _ErrMsg);
#line 233 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




 __declspec(dllimport) char**    __cdecl __p__pgmptr (void);
 __declspec(dllimport) wchar_t** __cdecl __p__wpgmptr(void);
 __declspec(dllimport) int*      __cdecl __p__fmode  (void);








    
    
    
#line 252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 
__declspec(dllimport) errno_t __cdecl _get_pgmptr (  char**    _Value);

 
__declspec(dllimport) errno_t __cdecl _get_wpgmptr(  wchar_t** _Value);

__declspec(dllimport) errno_t __cdecl _set_fmode  (               int       _Mode );

__declspec(dllimport) errno_t __cdecl _get_fmode  (              int*      _PMode);








typedef struct _div_t
{
    int quot;
    int rem;
} div_t;

typedef struct _ldiv_t
{
    long quot;
    long rem;
} ldiv_t;

typedef struct _lldiv_t
{
    long long quot;
    long long rem;
} lldiv_t;

  int       __cdecl abs   (  int       _Number);
  long      __cdecl labs  (  long      _Number);
  long long __cdecl llabs (  long long _Number);
  __int64   __cdecl _abs64(  __int64   _Number);

  unsigned short   __cdecl _byteswap_ushort(  unsigned short   _Number);
  unsigned long    __cdecl _byteswap_ulong (  unsigned long    _Number);
  unsigned __int64 __cdecl _byteswap_uint64(  unsigned __int64 _Number);

  __declspec(dllimport) div_t   __cdecl div  (  int       _Numerator,   int       _Denominator);
  __declspec(dllimport) ldiv_t  __cdecl ldiv (  long      _Numerator,   long      _Denominator);
  __declspec(dllimport) lldiv_t __cdecl lldiv(  long long _Numerator,   long long _Denominator);



#pragma warning (push)
#pragma warning (disable:6540)

unsigned int __cdecl _rotl(
      unsigned int _Value,
      int          _Shift
    );

 
unsigned long __cdecl _lrotl(
      unsigned long _Value,
      int           _Shift
    );

unsigned __int64 __cdecl _rotl64(
      unsigned __int64 _Value,
      int              _Shift
    );

unsigned int __cdecl _rotr(
      unsigned int _Value,
      int          _Shift
    );

 
unsigned long __cdecl _lrotr(
      unsigned long _Value,
      int           _Shift
    );

unsigned __int64 __cdecl _rotr64(
      unsigned __int64 _Value,
      int              _Shift
    );

#pragma warning (pop)






__declspec(dllimport) void __cdecl srand(  unsigned int _Seed);

  __declspec(dllimport) int __cdecl rand(void);



#line 352 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




extern "C++"
{
    inline long abs(long const _X) throw()
    {
        return labs(_X);
    }

    inline long long abs(long long const _X) throw()
    {
        return llabs(_X);
    }

    inline ldiv_t div(long const _A1, long const _A2) throw()
    {
        return ldiv(_A1, _A2);
    }

    inline lldiv_t div(long long const _A1, long long const _A2) throw()
    {
        return lldiv(_A1, _A2);
    }
}
#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"










    #pragma pack(push, 4)
    typedef struct
    {
        unsigned char ld[10];
    } _LDOUBLE;
    #pragma pack(pop)

    











#line 409 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

typedef struct
{
    double x;
} _CRT_DOUBLE;

typedef struct
{
    float f;
} _CRT_FLOAT;





typedef struct
{
    long double x;
} _LONGDOUBLE;



#pragma pack(push, 4)
typedef struct
{
    unsigned char ld12[12];
} _LDBL12;
#pragma pack(pop)








                     __declspec(dllimport) double    __cdecl atof   (  char const* _String);
   __declspec(dllimport) int       __cdecl atoi   (  char const* _String);
                     __declspec(dllimport) long      __cdecl atol   (  char const* _String);
                     __declspec(dllimport) long long __cdecl atoll  (  char const* _String);
                     __declspec(dllimport) __int64   __cdecl _atoi64(  char const* _String);

  __declspec(dllimport) double    __cdecl _atof_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) int       __cdecl _atoi_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) long      __cdecl _atol_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) long long __cdecl _atoll_l (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) __int64   __cdecl _atoi64_l(  char const* _String,   _locale_t _Locale);

  __declspec(dllimport) int __cdecl _atoflt (  _CRT_FLOAT*  _Result,   char const* _String);
  __declspec(dllimport) int __cdecl _atodbl (  _CRT_DOUBLE* _Result,   char*       _String);
  __declspec(dllimport) int __cdecl _atoldbl(  _LDOUBLE*    _Result,   char*       _String);

 
__declspec(dllimport) int __cdecl _atoflt_l(
         _CRT_FLOAT* _Result,
        char const* _String,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _atodbl_l(
         _CRT_DOUBLE* _Result,
        char*        _String,
      _locale_t    _Locale
    );


 
__declspec(dllimport) int __cdecl _atoldbl_l(
         _LDOUBLE* _Result,
        char*     _String,
      _locale_t _Locale
    );

 
__declspec(dllimport) float __cdecl strtof(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) float __cdecl _strtof_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) double __cdecl strtod(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) double __cdecl _strtod_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long double __cdecl strtold(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) long double __cdecl _strtold_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long __cdecl strtol(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) long __cdecl _strtol_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long long __cdecl strtoll(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) long long __cdecl _strtoll_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned long __cdecl strtoul(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned long __cdecl _strtoul_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned long long __cdecl strtoull(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned long long __cdecl _strtoull_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) __int64 __cdecl _strtoi64(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) __int64 __cdecl _strtoi64_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned __int64 __cdecl _strtoui64(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned __int64 __cdecl _strtoui64_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );








 

__declspec(dllimport) errno_t __cdecl _itoa_s(
                              int    _Value,
      char*  _Buffer,
                              size_t _BufferCount,
                              int    _Radix
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _itoa_s(  int _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _itoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 635 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) char* __cdecl _itoa( int _Value,   char *_Buffer,  int _Radix);
#line 645 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)

 

__declspec(dllimport) errno_t __cdecl _ltoa_s(
                              long   _Value,
      char*  _Buffer,
                              size_t _BufferCount,
                              int    _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltoa_s(  long _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _ltoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 662 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) char* __cdecl _ltoa( long _Value,   char *_Buffer,  int _Radix);
#line 669 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 

__declspec(dllimport) errno_t __cdecl _ultoa_s(
                              unsigned long _Value,
      char*         _Buffer,
                              size_t        _BufferCount,
                              int           _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultoa_s(  unsigned long _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _ultoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28726) 
 __declspec(dllimport) char* __cdecl _ultoa( unsigned long _Value,   char *_Buffer,  int _Radix);
#line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)

 

__declspec(dllimport) errno_t __cdecl _i64toa_s(
                              __int64 _Value,
      char*   _Buffer,
                              size_t  _BufferCount,
                              int     _Radix
    );

 

__declspec(dllimport) char* __cdecl _i64toa(
                        __int64 _Value,
        char*   _Buffer,
                        int     _Radix
    );

 

__declspec(dllimport) errno_t __cdecl _ui64toa_s(
                              unsigned __int64 _Value,
      char*            _Buffer,
                              size_t           _BufferCount,
                              int              _Radix
    );


__declspec(dllimport) char* __cdecl _ui64toa(
                        unsigned __int64 _Value,
        char*            _Buffer,
                        int              _Radix
    );













 

__declspec(dllimport) errno_t __cdecl _ecvt_s(
      char* _Buffer,
       size_t                       _BufferCount,
       double                       _Value,
       int                          _DigitCount,
      int*                         _PtDec,
      int*                         _PtSign
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ecvt_s(char (&_Buffer)[_Size],   double _Value,   int _DigitCount,   int* _PtDec,   int* _PtSign) throw() { return _ecvt_s(_Buffer, _Size, _Value, _DigitCount, _PtDec, _PtSign); } }
#line 760 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

  
__declspec(dllimport) char* __cdecl _ecvt(
       double _Value,
       int    _DigitCount,
      int*   _PtDec,
      int*   _PtSign
    );

 

__declspec(dllimport) errno_t __cdecl _fcvt_s(
      char*  _Buffer,
                              size_t _BufferCount,
                              double _Value,
                              int    _FractionalDigitCount,
                             int*   _PtDec,
                             int*   _PtSign
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _fcvt_s(char (&_Buffer)[_Size],   double _Value,   int _FractionalDigitCount,   int* _PtDec,   int* _PtSign) throw() { return _fcvt_s(_Buffer, _Size, _Value, _FractionalDigitCount, _PtDec, _PtSign); } }
#line 789 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 
  
__declspec(dllimport) char* __cdecl _fcvt(
       double _Value,
       int    _FractionalDigitCount,
      int*   _PtDec,
      int*   _PtSign
    );

 
__declspec(dllimport) errno_t __cdecl _gcvt_s(
      char*  _Buffer,
                              size_t _BufferCount,
                              double _Value,
                              int    _DigitCount
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _gcvt_s(char (&_Buffer)[_Size],   double _Value,   int _DigitCount) throw() { return _gcvt_s(_Buffer, _Size, _Value, _DigitCount); } }
#line 814 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) char* __cdecl _gcvt(
                        double _Value,
                        int    _DigitCount,
        char*  _Buffer
    );
































 
__declspec(dllimport) int __cdecl mblen(
        char const* _Ch,
                                             size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _mblen_l(
        char const* _Ch,
                                             size_t      _MaxCount,
                                         _locale_t   _Locale
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrlen(
      char const* _String
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrlen_l(
        char const* _String,
      _locale_t   _Locale
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrnlen(
      char const* _String,
        size_t      _MaxCount
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrnlen_l(
        char const* _String,
          size_t      _MaxCount,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl mbtowc(
                      wchar_t*    _DstCh,
      char const* _SrcCh,
                                      size_t      _SrcSizeInBytes
    );

 
__declspec(dllimport) int __cdecl _mbtowc_l(
                      wchar_t*    _DstCh,
      char const* _SrcCh,
                                      size_t      _SrcSizeInBytes,
                                  _locale_t   _Locale
    );


__declspec(dllimport) errno_t __cdecl mbstowcs_s(
                                                      size_t*     _PtNumOfCharConverted,
      wchar_t*    _DstBuf,
                                                           size_t      _SizeInWords,
                                     char const* _SrcBuf,
                                                           size_t      _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl mbstowcs_s(  size_t* _PtNumOfCharConverted,   wchar_t (&_Dest)[_Size],   char const* _Source,   size_t _MaxCount) throw() { return mbstowcs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
#line 925 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl mbstowcs( wchar_t *_Dest,  char const* _Source,  size_t _MaxCount);
#line 932 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _mbstowcs_s_l(
                                                      size_t*     _PtNumOfCharConverted,
      wchar_t*    _DstBuf,
                                                           size_t      _SizeInWords,
                                     char const* _SrcBuf,
                                                           size_t      _MaxCount,
                                                       _locale_t   _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbstowcs_s_l(  size_t* _PtNumOfCharConverted,   wchar_t (&_Dest)[_Size],   char const* _Source,   size_t _MaxCount,   _locale_t _Locale) throw() { return _mbstowcs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
#line 951 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl _mbstowcs_l(  wchar_t *_Dest,   char const* _Source,   size_t _MaxCount,   _locale_t _Locale);
#line 960 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"





__declspec(dllimport) int __cdecl wctomb(
      char*   _MbCh,
                                wchar_t _WCh
    );


__declspec(dllimport) int __cdecl _wctomb_l(
        char*     _MbCh,
                          wchar_t   _WCh,
                      _locale_t _Locale
    );



    
    __declspec(dllimport) errno_t __cdecl wctomb_s(
                                                         int*    _SizeConverted,
          char*   _MbCh,
                                                              rsize_t _SizeInBytes,
                                                              wchar_t _WCh
        );

#line 988 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _wctomb_s_l(
                             int*     _SizeConverted,
      char*     _MbCh,
                                  size_t    _SizeInBytes,
                                  wchar_t   _WCh,
                              _locale_t _Locale);


__declspec(dllimport) errno_t __cdecl wcstombs_s(
                                                               size_t*        _PtNumOfCharConverted,
      char*          _Dst,
                                                                    size_t         _DstSizeInBytes,
                                                                  wchar_t const* _Src,
                                                                    size_t         _MaxCountInBytes
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcstombs_s(  size_t* _PtNumOfCharConverted,   char (&_Dest)[_Size],   wchar_t const* _Source,   size_t _MaxCount) throw() { return wcstombs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
#line 1013 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl wcstombs( char *_Dest,  wchar_t const* _Source,  size_t _MaxCount);
#line 1020 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _wcstombs_s_l(
                                                               size_t*        _PtNumOfCharConverted,
      char*          _Dst,
                                                                    size_t         _DstSizeInBytes,
                                                                  wchar_t const* _Src,
                                                                    size_t         _MaxCountInBytes,
                                                                _locale_t      _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcstombs_s_l(  size_t* _PtNumOfCharConverted,   char (&_Dest)[_Size],   wchar_t const* _Source,   size_t _MaxCount,   _locale_t _Locale) throw() { return _wcstombs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
#line 1039 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl _wcstombs_l(  char *_Dest,   wchar_t const* _Source,   size_t _MaxCount,   _locale_t _Locale);
#line 1048 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




















 
 
__declspec(dllimport) __declspec(allocator) char* __cdecl _fullpath(
      char*       _Buffer,
                                char const* _Path,
                                  size_t      _BufferCount
    );




__declspec(dllimport) errno_t __cdecl _makepath_s(
      char*       _Buffer,
                              size_t      _BufferCount,
                        char const* _Drive,
                        char const* _Dir,
                        char const* _Filename,
                        char const* _Ext
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _makepath_s(char (&_Buffer)[_Size],   char const* _Drive,   char const* _Dir,   char const* _Filename,   char const* _Ext) throw() { return _makepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
#line 1096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) void __cdecl _makepath(  char *_Buffer,  char const* _Drive,  char const* _Dir,  char const* _Filename,  char const* _Ext);
#line 1108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)


__declspec(dllimport) void __cdecl _splitpath(
                        char const* _FullPath,
        char*       _Drive,
        char*       _Dir,
        char*       _Filename,
        char*       _Ext
    );


__declspec(dllimport) errno_t __cdecl _splitpath_s(
                                  char const* _FullPath,
         char*       _Drive,
                                    size_t      _DriveCount,
           char*       _Dir,
                                    size_t      _DirCount,
      char*       _Filename,
                                    size_t      _FilenameCount,
           char*       _Ext,
                                    size_t      _ExtCount
    );

extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _splitpath_s(   char const* _Dest,   char (&_Drive)[_DriveSize],   char (&_Dir)[_DirSize],   char (&_Name)[_NameSize],   char (&_Ext)[_ExtSize] ) throw() { return _splitpath_s(_Dest, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }










    

    
     
    __declspec(dllimport) errno_t __cdecl getenv_s(
                                     size_t*     _RequiredCount,
          char*       _Buffer,
                                      rsize_t     _BufferCount,
                                    char const* _VarName
        );

    #line 1155 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




    __declspec(dllimport) int*       __cdecl __p___argc (void);
    __declspec(dllimport) char***    __cdecl __p___argv (void);
    __declspec(dllimport) wchar_t*** __cdecl __p___wargv(void);

    




        
        
        
    #line 1172 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    __declspec(dllimport) char***    __cdecl __p__environ (void);
    __declspec(dllimport) wchar_t*** __cdecl __p__wenviron(void);

    
        
    #line 1179 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    





        
        
    #line 1189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"



    
    


    

          
        __declspec(dllimport) char* __cdecl getenv(
              char const* _VarName
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl getenv_s(  size_t* _RequiredCount, char (&_Buffer)[_Size],   char const* _VarName) throw() { return getenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
#line 1209 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        


#line 1214 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        
        __declspec(dllimport) errno_t __cdecl _dupenv_s(
                char**      _Buffer,
                                                                                size_t*     _BufferCount,
                                                                                   char const* _VarName
            );

        

#line 1225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        __declspec(dllimport) int __cdecl system(
              char const* _Command
            );

        
        
        #pragma warning (push)
        #pragma warning (disable:6540)

         
        __declspec(dllimport) int __cdecl _putenv(
              char const* _EnvString
            );

        
        __declspec(dllimport) errno_t __cdecl _putenv_s(
              char const* _Name,
              char const* _Value
            );

        #pragma warning (pop)

        __declspec(dllimport) errno_t __cdecl _searchenv_s(
                                    char const* _Filename,
                                    char const* _VarName,
              char*       _Buffer,
                                      size_t      _BufferCount
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl _searchenv_s(  char const* _Filename,   char const* _VarName, char (&_Buffer)[_Size]) throw() { return _searchenv_s(_Filename, _VarName, _Buffer, _Size); } }
#line 1261 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

         __declspec(dllimport) void __cdecl _searchenv( char const* _Filename,  char const* _VarName,   char *_Buffer);
#line 1268 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        
        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "SetErrorMode" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _seterrormode(
              int _Mode
            );

        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Beep" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _beep(
              unsigned _Frequency,
              unsigned _Duration
            );

        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Sleep" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _sleep(
              unsigned long _Duration
            );

    #line 1287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#line 1289 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"










    




    
    

    #pragma warning(push)
    #pragma warning(disable: 4141) 

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ecvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ecvt(
           double _Value,
           int    _DigitCount,
          int*   _PtDec,
          int*   _PtSign
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl fcvt(
           double _Value,
           int    _FractionalDigitCount,
          int*   _PtDec,
          int*   _PtSign
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_gcvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl gcvt(
                            double _Value,
                            int    _DigitCount,
            char*  _DstBuf
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_itoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl itoa(
                            int   _Value,
            char* _Buffer,
                            int   _Radix
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ltoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ltoa(
                            long  _Value,
            char* _Buffer,
                            int   _Radix
        );


    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_swab" ". See online help for details."))
    __declspec(dllimport) void __cdecl swab(
          char* _Buf1,
          char* _Buf2,
                                     int   _SizeInBytes
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ultoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ultoa(
                            unsigned long _Value,
            char*         _Buffer,
                            int           _Radix
        );

    

        

          __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putenv" ". See online help for details."))
        __declspec(dllimport) int __cdecl putenv(
              char const* _EnvString
            );

    #line 1372 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    #pragma warning(pop)

    _onexit_t __cdecl onexit(  _onexit_t _Func);

#line 1378 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"



} __pragma(pack(pop))
#line 19 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"


#line 22 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdint.h"







#pragma once




#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 14 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdint.h"



typedef signed char        int8_t;
typedef short              int16_t;
typedef int                int32_t;
typedef long long          int64_t;
typedef unsigned char      uint8_t;
typedef unsigned short     uint16_t;
typedef unsigned int       uint32_t;
typedef unsigned long long uint64_t;

typedef signed char        int_least8_t;
typedef short              int_least16_t;
typedef int                int_least32_t;
typedef long long          int_least64_t;
typedef unsigned char      uint_least8_t;
typedef unsigned short     uint_least16_t;
typedef unsigned int       uint_least32_t;
typedef unsigned long long uint_least64_t;

typedef signed char        int_fast8_t;
typedef int                int_fast16_t;
typedef int                int_fast32_t;
typedef long long          int_fast64_t;
typedef unsigned char      uint_fast8_t;
typedef unsigned int       uint_fast16_t;
typedef unsigned int       uint_fast32_t;
typedef unsigned long long uint_fast64_t;

typedef long long          intmax_t;
typedef unsigned long long uintmax_t;














































    
    
    
#line 96 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdint.h"




































#line 133 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdint.h"





#line 23 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
#line 24 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"


#pragma warning (disable: 4996) 

#line 29 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"

















#line 47 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"






#line 54 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"










static void ShowExampleAppConsole(bool* p_open);
static void ShowExampleAppLog(bool* p_open);
static void ShowExampleAppLayout(bool* p_open);
static void ShowExampleAppPropertyEditor(bool* p_open);
static void ShowExampleAppLongText(bool* p_open);
static void ShowExampleAppAutoResize(bool* p_open);
static void ShowExampleAppConstrainedResize(bool* p_open);
static void ShowExampleAppFixedOverlay(bool* p_open);
static void ShowExampleAppManipulatingWindowTitle(bool* p_open);
static void ShowExampleAppCustomRendering(bool* p_open);
static void ShowExampleAppMainMenuBar();
static void ShowExampleMenuFile();

static void ShowHelpMarker(const char* desc)
{
    ImGui::TextDisabled("(?)");
    if (ImGui::IsItemHovered())
    {
        ImGui::BeginTooltip();
        ImGui::PushTextWrapPos(450.0f);
        ImGui::TextUnformatted(desc);
        ImGui::PopTextWrapPos();
        ImGui::EndTooltip();
    }
}

void ImGui::ShowUserGuide()
{
    ImGui::BulletText("Double-click on title bar to collapse window.");
    ImGui::BulletText("Click and drag on lower right corner to resize window.");
    ImGui::BulletText("Click and drag on any empty space to move window.");
    ImGui::BulletText("Mouse Wheel to scroll.");
    if (ImGui::GetIO().FontAllowUserScaling)
        ImGui::BulletText("CTRL+Mouse Wheel to zoom window contents.");
    ImGui::BulletText("TAB/SHIFT+TAB to cycle through keyboard editable fields.");
    ImGui::BulletText("CTRL+Click on a slider or drag box to input text.");
    ImGui::BulletText(
        "While editing text:\n"
        "- Hold SHIFT or use mouse to select text\n"
        "- CTRL+Left/Right to word jump\n"
        "- CTRL+A or double-click to select all\n"
        "- CTRL+X,CTRL+C,CTRL+V clipboard\n"
        "- CTRL+Z,CTRL+Y undo/redo\n"
        "- ESCAPE to revert\n"
        "- You can apply arithmetic operators +,*,/ on numerical values.\n"
        "  Use +- to subtract.\n");
}


void ImGui::ShowTestWindow(bool* p_open)
{
    
    static bool show_app_main_menu_bar = false;
    static bool show_app_console = false;
    static bool show_app_log = false;
    static bool show_app_layout = false;
    static bool show_app_property_editor = false;
    static bool show_app_long_text = false;
    static bool show_app_auto_resize = false;
    static bool show_app_constrained_resize = false;
    static bool show_app_fixed_overlay = false;
    static bool show_app_manipulating_window_title = false;
    static bool show_app_custom_rendering = false;
    static bool show_app_style_editor = false;

    static bool show_app_metrics = false;
    static bool show_app_about = false;

    if (show_app_main_menu_bar) ShowExampleAppMainMenuBar();
    if (show_app_console) ShowExampleAppConsole(&show_app_console);
    if (show_app_log) ShowExampleAppLog(&show_app_log);
    if (show_app_layout) ShowExampleAppLayout(&show_app_layout);
    if (show_app_property_editor) ShowExampleAppPropertyEditor(&show_app_property_editor);
    if (show_app_long_text) ShowExampleAppLongText(&show_app_long_text);
    if (show_app_auto_resize) ShowExampleAppAutoResize(&show_app_auto_resize);
    if (show_app_constrained_resize) ShowExampleAppConstrainedResize(&show_app_constrained_resize);
    if (show_app_fixed_overlay) ShowExampleAppFixedOverlay(&show_app_fixed_overlay);
    if (show_app_manipulating_window_title) ShowExampleAppManipulatingWindowTitle(&show_app_manipulating_window_title);
    if (show_app_custom_rendering) ShowExampleAppCustomRendering(&show_app_custom_rendering);

    if (show_app_metrics) ImGui::ShowMetricsWindow(&show_app_metrics);
    if (show_app_style_editor) { ImGui::Begin("Style Editor", &show_app_style_editor); ImGui::ShowStyleEditor(); ImGui::End(); }
    if (show_app_about)
    {
        ImGui::Begin("About ImGui", &show_app_about, ImGuiWindowFlags_AlwaysAutoResize);
        ImGui::Text("dear imgui, %s", ImGui::GetVersion());
        ImGui::Separator();
        ImGui::Text("By Omar Cornut and all github contributors.");
        ImGui::Text("ImGui is licensed under the MIT License, see LICENSE for more information.");
        ImGui::End();
    }

    static bool no_titlebar = false;
    static bool no_border = true;
    static bool no_resize = false;
    static bool no_move = false;
    static bool no_scrollbar = false;
    static bool no_collapse = false;
    static bool no_menu = false;

    
    ImGuiWindowFlags window_flags = 0;
    if (no_titlebar)  window_flags |= ImGuiWindowFlags_NoTitleBar;
    if (!no_border)   window_flags |= ImGuiWindowFlags_ShowBorders;
    if (no_resize)    window_flags |= ImGuiWindowFlags_NoResize;
    if (no_move)      window_flags |= ImGuiWindowFlags_NoMove;
    if (no_scrollbar) window_flags |= ImGuiWindowFlags_NoScrollbar;
    if (no_collapse)  window_flags |= ImGuiWindowFlags_NoCollapse;
    if (!no_menu)     window_flags |= ImGuiWindowFlags_MenuBar;
    ImGui::SetNextWindowSize(ImVec2(550,680), ImGuiSetCond_FirstUseEver);
    if (!ImGui::Begin("ImGui Demo", p_open, window_flags))
    {
        
        ImGui::End();
        return;
    }

    
    ImGui::PushItemWidth(-140);                                 

    ImGui::Text("Dear ImGui says hello.");

    
    if (ImGui::BeginMenuBar())
    {
        if (ImGui::BeginMenu("Menu"))
        {
            ShowExampleMenuFile();
            ImGui::EndMenu();
        }
        if (ImGui::BeginMenu("Examples"))
        {
            ImGui::MenuItem("Main menu bar", 0, &show_app_main_menu_bar);
            ImGui::MenuItem("Console", 0, &show_app_console);
            ImGui::MenuItem("Log", 0, &show_app_log);
            ImGui::MenuItem("Simple layout", 0, &show_app_layout);
            ImGui::MenuItem("Property editor", 0, &show_app_property_editor);
            ImGui::MenuItem("Long text display", 0, &show_app_long_text);
            ImGui::MenuItem("Auto-resizing window", 0, &show_app_auto_resize);
            ImGui::MenuItem("Constrained-resizing window", 0, &show_app_constrained_resize);
            ImGui::MenuItem("Simple overlay", 0, &show_app_fixed_overlay);
            ImGui::MenuItem("Manipulating window title", 0, &show_app_manipulating_window_title);
            ImGui::MenuItem("Custom rendering", 0, &show_app_custom_rendering);
            ImGui::EndMenu();
        }
        if (ImGui::BeginMenu("Help"))
        {
            ImGui::MenuItem("Metrics", 0, &show_app_metrics);
            ImGui::MenuItem("Style Editor", 0, &show_app_style_editor);
            ImGui::MenuItem("About ImGui", 0, &show_app_about);
            ImGui::EndMenu();
        }
        ImGui::EndMenuBar();
    }

    ImGui::Spacing();
    if (ImGui::CollapsingHeader("Help"))
    {
        ImGui::TextWrapped("This window is being created by the ShowTestWindow() function. Please refer to the code for programming reference.\n\nUser Guide:");
        ImGui::ShowUserGuide();
    }

    if (ImGui::CollapsingHeader("Window options"))
    {
        ImGui::Checkbox("No titlebar", &no_titlebar); ImGui::SameLine(150);
        ImGui::Checkbox("No border", &no_border); ImGui::SameLine(300);
        ImGui::Checkbox("No resize", &no_resize);
        ImGui::Checkbox("No move", &no_move); ImGui::SameLine(150);
        ImGui::Checkbox("No scrollbar", &no_scrollbar); ImGui::SameLine(300);
        ImGui::Checkbox("No collapse", &no_collapse);
        ImGui::Checkbox("No menu", &no_menu);

        if (ImGui::TreeNode("Style"))
        {
            ImGui::ShowStyleEditor();
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Logging"))
        {
            ImGui::TextWrapped("The logging API redirects all text output so you can easily capture the content of a window or a block. Tree nodes can be automatically expanded. You can also call ImGui::LogText() to output directly to the log without a visual output.");
            ImGui::LogButtons();
            ImGui::TreePop();
        }
    }

    if (ImGui::CollapsingHeader("Widgets"))
    {
        if (ImGui::TreeNode("Trees"))
        {
            if (ImGui::TreeNode("Basic trees"))
            {
                for (int i = 0; i < 5; i++)
                    if (ImGui::TreeNode((void*)(intptr_t)i, "Child %d", i))
                    {
                        ImGui::Text("blah blah");
                        ImGui::SameLine(); 
                        if (ImGui::SmallButton("print")) printf("Child %d pressed", i);
                        ImGui::TreePop();
                    }
                ImGui::TreePop();
            }

            if (ImGui::TreeNode("Advanced, with Selectable nodes"))
            {
                ShowHelpMarker("This is a more standard looking tree with selectable nodes.\nClick to select, CTRL+Click to toggle, click on arrows or double-click to open.");
                static bool align_label_with_current_x_position = false;
                ImGui::Checkbox("Align label with current X position)", &align_label_with_current_x_position);
                ImGui::Text("Hello!");
                if (align_label_with_current_x_position)
                    ImGui::Unindent(ImGui::GetTreeNodeToLabelSpacing());

                static int selection_mask = (1 << 2); 
                int node_clicked = -1;                
                ImGui::PushStyleVar(ImGuiStyleVar_IndentSpacing, ImGui::GetFontSize()*3); 
                for (int i = 0; i < 6; i++)
                {
                    
                    ImGuiTreeNodeFlags node_flags = ImGuiTreeNodeFlags_OpenOnArrow | ImGuiTreeNodeFlags_OpenOnDoubleClick | ((selection_mask & (1 << i)) ? ImGuiTreeNodeFlags_Selected : 0);
                    if (i < 3)
                    {
                        
                        bool node_open = ImGui::TreeNodeEx((void*)(intptr_t)i, node_flags, "Selectable Node %d", i);
                        if (ImGui::IsItemClicked()) 
                            node_clicked = i;
                        if (node_open)
                        {
                            ImGui::Text("Blah blah\nBlah Blah");
                            ImGui::TreePop();
                        }
                    }
                    else
                    {
                        
                        ImGui::TreeNodeEx((void*)(intptr_t)i, node_flags | ImGuiTreeNodeFlags_Leaf | ImGuiTreeNodeFlags_NoTreePushOnOpen, "Selectable Leaf %d", i);
                        if (ImGui::IsItemClicked()) 
                            node_clicked = i;
                    }
                }
                if (node_clicked != -1)
                {
                    
                    if (ImGui::GetIO().KeyCtrl)
                        selection_mask ^= (1 << node_clicked);          
                    else 
                        selection_mask = (1 << node_clicked);           
                }
                ImGui::PopStyleVar();
                if (align_label_with_current_x_position)
                    ImGui::Indent(ImGui::GetTreeNodeToLabelSpacing());
                ImGui::TreePop();
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Collapsing Headers"))
        {
            static bool closable_group = true;
            if (ImGui::CollapsingHeader("Header"))
            {
                ImGui::Checkbox("Enable extra group", &closable_group);
                for (int i = 0; i < 5; i++)
                    ImGui::Text("Some content %d", i);
            }
            if (ImGui::CollapsingHeader("Header with a close button", &closable_group))
            {
                for (int i = 0; i < 5; i++)
                    ImGui::Text("More content %d", i);
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Bullets"))
        {
            ImGui::BulletText("Bullet point 1");
            ImGui::BulletText("Bullet point 2\nOn multiple lines");
            ImGui::Bullet(); ImGui::Text("Bullet point 3 (two calls)");
            ImGui::Bullet(); ImGui::SmallButton("Button");
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Colored Text"))
        {
            
            ImGui::TextColored(ImVec4(1.0f,0.0f,1.0f,1.0f), "Pink");
            ImGui::TextColored(ImVec4(1.0f,1.0f,0.0f,1.0f), "Yellow");
            ImGui::TextDisabled("Disabled");
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Word Wrapping"))
        {
            
            ImGui::TextWrapped("This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.");
            ImGui::Spacing();

            static float wrap_width = 200.0f;
            ImGui::SliderFloat("Wrap width", &wrap_width, -20, 600, "%.0f");

            ImGui::Text("Test paragraph 1:");
            ImVec2 pos = ImGui::GetCursorScreenPos();
            ImGui::GetWindowDrawList()->AddRectFilled(ImVec2(pos.x + wrap_width, pos.y), ImVec2(pos.x + wrap_width + 10, pos.y + ImGui::GetTextLineHeight()), (((ImU32)(255)<<24) | ((ImU32)(255)<<16) | ((ImU32)(0)<<8) | ((ImU32)(255)<<0)));
            ImGui::PushTextWrapPos(ImGui::GetCursorPos().x + wrap_width);
            ImGui::Text("The lazy dog is a good dog. This paragraph is made to fit within %.0f pixels. Testing a 1 character word. The quick brown fox jumps over the lazy dog.", wrap_width);
            ImGui::GetWindowDrawList()->AddRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax(), (((ImU32)(255)<<24) | ((ImU32)(0)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0)));
            ImGui::PopTextWrapPos();

            ImGui::Text("Test paragraph 2:");
            pos = ImGui::GetCursorScreenPos();
            ImGui::GetWindowDrawList()->AddRectFilled(ImVec2(pos.x + wrap_width, pos.y), ImVec2(pos.x + wrap_width + 10, pos.y + ImGui::GetTextLineHeight()), (((ImU32)(255)<<24) | ((ImU32)(255)<<16) | ((ImU32)(0)<<8) | ((ImU32)(255)<<0)));
            ImGui::PushTextWrapPos(ImGui::GetCursorPos().x + wrap_width);
            ImGui::Text("aaaaaaaa bbbbbbbb, c cccccccc,dddddddd. d eeeeeeee   ffffffff. gggggggg!hhhhhhhh");
            ImGui::GetWindowDrawList()->AddRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax(), (((ImU32)(255)<<24) | ((ImU32)(0)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0)));
            ImGui::PopTextWrapPos();

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("UTF-8 Text"))
        {
            
            
            
            
            
            
            ImGui::TextWrapped("CJK text will only appears if the font was loaded with the appropriate CJK character ranges. Call io.Font->LoadFromFileTTF() manually to load extra character ranges.");
            ImGui::Text("Hiragana: \xe3\x81\x8b\xe3\x81\x8d\xe3\x81\x8f\xe3\x81\x91\xe3\x81\x93 (kakikukeko)");
            ImGui::Text("Kanjis: \xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e (nihongo)");
            static char buf[32] = "\xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e";
            ImGui::InputText("UTF-8 input", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Images"))
        {
            ImGui::TextWrapped("Below we are displaying the font texture (which is the only texture we have access to in this demo). Use the 'ImTextureID' type as storage to pass pointers or identifier to your own texture data. Hover the texture for a zoomed view!");
            ImVec2 tex_screen_pos = ImGui::GetCursorScreenPos();
            float tex_w = (float)ImGui::GetIO().Fonts->TexWidth;
            float tex_h = (float)ImGui::GetIO().Fonts->TexHeight;
            ImTextureID tex_id = ImGui::GetIO().Fonts->TexID;
            ImGui::Text("%.0fx%.0f", tex_w, tex_h);
            ImGui::Image(tex_id, ImVec2(tex_w, tex_h), ImVec2(0,0), ImVec2(1,1), ImColor(255,255,255,255), ImColor(255,255,255,128));
            if (ImGui::IsItemHovered())
            {
                ImGui::BeginTooltip();
                float focus_sz = 32.0f;
                float focus_x = ImGui::GetMousePos().x - tex_screen_pos.x - focus_sz * 0.5f; if (focus_x < 0.0f) focus_x = 0.0f; else if (focus_x > tex_w - focus_sz) focus_x = tex_w - focus_sz;
                float focus_y = ImGui::GetMousePos().y - tex_screen_pos.y - focus_sz * 0.5f; if (focus_y < 0.0f) focus_y = 0.0f; else if (focus_y > tex_h - focus_sz) focus_y = tex_h - focus_sz;
                ImGui::Text("Min: (%.2f, %.2f)", focus_x, focus_y);
                ImGui::Text("Max: (%.2f, %.2f)", focus_x + focus_sz, focus_y + focus_sz);
                ImVec2 uv0 = ImVec2((focus_x) / tex_w, (focus_y) / tex_h);
                ImVec2 uv1 = ImVec2((focus_x + focus_sz) / tex_w, (focus_y + focus_sz) / tex_h);
                ImGui::Image(tex_id, ImVec2(128,128), uv0, uv1, ImColor(255,255,255,255), ImColor(255,255,255,128));
                ImGui::EndTooltip();
            }
            ImGui::TextWrapped("And now some textured buttons..");
            static int pressed_count = 0;
            for (int i = 0; i < 8; i++)
            {
                ImGui::PushID(i);
                int frame_padding = -1 + i;     
                if (ImGui::ImageButton(tex_id, ImVec2(32,32), ImVec2(0,0), ImVec2(32.0f/tex_w,32/tex_h), frame_padding, ImColor(0,0,0,255)))
                    pressed_count += 1;
                ImGui::PopID();
                ImGui::SameLine();
            }
            ImGui::NewLine();
            ImGui::Text("Pressed %d times.", pressed_count);
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Selectables"))
        {
            if (ImGui::TreeNode("Basic"))
            {
                static bool selected[4] = { false, true, false, false };
                ImGui::Selectable("1. I am selectable", &selected[0]);
                ImGui::Selectable("2. I am selectable", &selected[1]);
                ImGui::Text("3. I am not selectable");
                ImGui::Selectable("4. I am selectable", &selected[2]);
                if (ImGui::Selectable("5. I am double clickable", selected[3], ImGuiSelectableFlags_AllowDoubleClick))
                    if (ImGui::IsMouseDoubleClicked(0))
                        selected[3] = !selected[3];
                ImGui::TreePop();
            }
            if (ImGui::TreeNode("Rendering more text into the same block"))
            {
                static bool selected[3] = { false, false, false };
                ImGui::Selectable("main.c", &selected[0]);    ImGui::SameLine(300); ImGui::Text(" 2,345 bytes");
                ImGui::Selectable("Hello.cpp", &selected[1]); ImGui::SameLine(300); ImGui::Text("12,345 bytes");
                ImGui::Selectable("Hello.h", &selected[2]);   ImGui::SameLine(300); ImGui::Text(" 2,345 bytes");
                ImGui::TreePop();
            }
            if (ImGui::TreeNode("In columns"))
            {
                ImGui::Columns(3, 0, false);
                static bool selected[16] = { 0 };
                for (int i = 0; i < 16; i++)
                {
                    char label[32]; sprintf(label, "Item %d", i);
                    if (ImGui::Selectable(label, &selected[i])) {}
                    ImGui::NextColumn();
                }
                ImGui::Columns(1);
                ImGui::TreePop();
            }
            if (ImGui::TreeNode("Grid"))
            {
                static bool selected[16] = { true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true };
                for (int i = 0; i < 16; i++)
                {
                    ImGui::PushID(i);
                    if (ImGui::Selectable("Sailor", &selected[i], 0, ImVec2(50,50)))
                    {
                        int x = i % 4, y = i / 4;
                        if (x > 0) selected[i - 1] ^= 1;
                        if (x < 3) selected[i + 1] ^= 1;
                        if (y > 0) selected[i - 4] ^= 1;
                        if (y < 3) selected[i + 4] ^= 1;
                    }
                    if ((i % 4) < 3) ImGui::SameLine();
                    ImGui::PopID();
                }
                ImGui::TreePop();
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Filtered Text Input"))
        {
            static char buf1[64] = ""; ImGui::InputText("default", buf1, 64);
            static char buf2[64] = ""; ImGui::InputText("decimal", buf2, 64, ImGuiInputTextFlags_CharsDecimal);
            static char buf3[64] = ""; ImGui::InputText("hexadecimal", buf3, 64, ImGuiInputTextFlags_CharsHexadecimal | ImGuiInputTextFlags_CharsUppercase);
            static char buf4[64] = ""; ImGui::InputText("uppercase", buf4, 64, ImGuiInputTextFlags_CharsUppercase);
            static char buf5[64] = ""; ImGui::InputText("no blank", buf5, 64, ImGuiInputTextFlags_CharsNoBlank);
            struct TextFilters { static int FilterImGuiLetters(ImGuiTextEditCallbackData* data) { if (data->EventChar < 256 && strchr("imgui", (char)data->EventChar)) return 0; return 1; } };
            static char buf6[64] = ""; ImGui::InputText("\"imgui\" letters", buf6, 64, ImGuiInputTextFlags_CallbackCharFilter, TextFilters::FilterImGuiLetters);

            ImGui::Text("Password input");
            static char bufpass[64] = "password123";
            ImGui::InputText("password", bufpass, 64, ImGuiInputTextFlags_Password | ImGuiInputTextFlags_CharsNoBlank);
            ImGui::SameLine(); ShowHelpMarker("Display all characters as '*'.\nDisable clipboard cut and copy.\nDisable logging.\n");
            ImGui::InputText("password (clear)", bufpass, 64, ImGuiInputTextFlags_CharsNoBlank);

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Multi-line Text Input"))
        {
            static bool read_only = false;
            static char text[1024*16] =
                "/*\n"
                " The Pentium F00F bug, shorthand for F0 0F C7 C8,\n"
                " the hexadecimal encoding of one offending instruction,\n"
                " more formally, the invalid operand with locked CMPXCHG8B\n"
                " instruction bug, is a design flaw in the majority of\n"
                " Intel Pentium, Pentium MMX, and Pentium OverDrive\n"
                " processors (all in the P5 microarchitecture).\n"
                "*/\n\n"
                "label:\n"
                "\tlock cmpxchg8b eax\n";

            ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(0,0));
            ImGui::Checkbox("Read-only", &read_only);
            ImGui::PopStyleVar();
            ImGui::InputTextMultiline("##source", text, ((int)(sizeof(text)/sizeof(*text))), ImVec2(-1.0f, ImGui::GetTextLineHeight() * 16), ImGuiInputTextFlags_AllowTabInput | (read_only ? ImGuiInputTextFlags_ReadOnly : 0));
            ImGui::TreePop();
        }

        static bool a=false;
        if (ImGui::Button("Button")) { printf("Clicked\n"); a ^= 1; }
        if (a)
        {
            ImGui::SameLine();
            ImGui::Text("Thanks for clicking me!");
        }

        static bool check = true;
        ImGui::Checkbox("checkbox", &check);

        static int e = 0;
        ImGui::RadioButton("radio a", &e, 0); ImGui::SameLine();
        ImGui::RadioButton("radio b", &e, 1); ImGui::SameLine();
        ImGui::RadioButton("radio c", &e, 2);

        
        for (int i = 0; i < 7; i++)
        {
            if (i > 0) ImGui::SameLine();
            ImGui::PushID(i);
            ImGui::PushStyleColor(ImGuiCol_Button, ImColor::HSV(i/7.0f, 0.6f, 0.6f));
            ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImColor::HSV(i/7.0f, 0.7f, 0.7f));
            ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImColor::HSV(i/7.0f, 0.8f, 0.8f));
            ImGui::Button("Click");
            ImGui::PopStyleColor(3);
            ImGui::PopID();
        }

        ImGui::Text("Hover over me");
        if (ImGui::IsItemHovered())
            ImGui::SetTooltip("I am a tooltip");

        ImGui::SameLine();
        ImGui::Text("- or me");
        if (ImGui::IsItemHovered())
        {
            ImGui::BeginTooltip();
            ImGui::Text("I am a fancy tooltip");
            static float arr[] = { 0.6f, 0.1f, 1.0f, 0.5f, 0.92f, 0.1f, 0.2f };
            ImGui::PlotLines("Curve", arr, ((int)(sizeof(arr)/sizeof(*arr))));
            ImGui::EndTooltip();
        }

        
        
        
        
        
        
        
        

        ImGui::Separator();

        ImGui::LabelText("label", "Value");

        static int item = 1;
        ImGui::Combo("combo", &item, "aaaa\0bbbb\0cccc\0dddd\0eeee\0\0");   

        const char* items[] = { "AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF", "GGGG", "HHHH", "IIII", "JJJJ", "KKKK" };
        static int item2 = -1;
        ImGui::Combo("combo scroll", &item2, items, ((int)(sizeof(items)/sizeof(*items))));   

        {
            static char str0[128] = "Hello, world!";
            static int i0=123;
            static float f0=0.001f;
            ImGui::InputText("input text", str0, ((int)(sizeof(str0)/sizeof(*str0))));
            ImGui::SameLine(); ShowHelpMarker("Hold SHIFT or use mouse to select text.\n" "CTRL+Left/Right to word jump.\n" "CTRL+A or double-click to select all.\n" "CTRL+X,CTRL+C,CTRL+V clipboard.\n" "CTRL+Z,CTRL+Y undo/redo.\n" "ESCAPE to revert.\n");

            ImGui::InputInt("input int", &i0);
            ImGui::SameLine(); ShowHelpMarker("You can apply arithmetic operators +,*,/ on numerical values.\n  e.g. [ 100 ], input \'*2\', result becomes [ 200 ]\nUse +- to subtract.\n");

            ImGui::InputFloat("input float", &f0, 0.01f, 1.0f);

            static float vec4a[4] = { 0.10f, 0.20f, 0.30f, 0.44f };
            ImGui::InputFloat3("input float3", vec4a);
        }

        {
            static int i1=50, i2=42;
            ImGui::DragInt("drag int", &i1, 1);
            ImGui::SameLine(); ShowHelpMarker("Click and drag to edit value.\nHold SHIFT/ALT for faster/slower edit.\nDouble-click or CTRL+click to input value.");

            ImGui::DragInt("drag int 0..100", &i2, 1, 0, 100, "%.0f%%");

            static float f1=1.00f, f2=0.0067f;
            ImGui::DragFloat("drag float", &f1, 0.005f);
            ImGui::DragFloat("drag small float", &f2, 0.0001f, 0.0f, 0.0f, "%.06f ns");
        }

        {
            static int i1=0;
            ImGui::SliderInt("slider int", &i1, -1, 3);
            ImGui::SameLine(); ShowHelpMarker("CTRL+click to input value.");

            static float f1=0.123f, f2=0.0f;
            ImGui::SliderFloat("slider float", &f1, 0.0f, 1.0f, "ratio = %.3f");
            ImGui::SliderFloat("slider log float", &f2, -10.0f, 10.0f, "%.4f", 3.0f);
            static float angle = 0.0f;
            ImGui::SliderAngle("slider angle", &angle);
        }

        static float col1[3] = { 1.0f,0.0f,0.2f };
        static float col2[4] = { 0.4f,0.7f,0.0f,0.5f };
        ImGui::ColorEdit3("color 1", col1);
        ImGui::SameLine(); ShowHelpMarker("Click on the colored square to change edit mode.\nCTRL+click on individual component to input value.\n");

        ImGui::ColorEdit4("color 2", col2);

        const char* listbox_items[] = { "Apple", "Banana", "Cherry", "Kiwi", "Mango", "Orange", "Pineapple", "Strawberry", "Watermelon" };
        static int listbox_item_current = 1;
        ImGui::ListBox("listbox\n(single select)", &listbox_item_current, listbox_items, ((int)(sizeof(listbox_items)/sizeof(*listbox_items))), 4);

        
        
        
        

        if (ImGui::TreeNode("Range Widgets"))
        {
            ImGui::Unindent();

            static float begin = 10, end = 90;
            static int begin_i = 100, end_i = 1000;
            ImGui::DragFloatRange2("range", &begin, &end, 0.25f, 0.0f, 100.0f, "Min: %.1f %%", "Max: %.1f %%");
            ImGui::DragIntRange2("range int (no bounds)", &begin_i, &end_i, 5, 0, 0, "Min: %.0f units", "Max: %.0f units");

            ImGui::Indent();
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Multi-component Widgets"))
        {
            ImGui::Unindent();

            static float vec4f[4] = { 0.10f, 0.20f, 0.30f, 0.44f };
            static int vec4i[4] = { 1, 5, 100, 255 };

            ImGui::InputFloat2("input float2", vec4f);
            ImGui::DragFloat2("drag float2", vec4f, 0.01f, 0.0f, 1.0f);
            ImGui::SliderFloat2("slider float2", vec4f, 0.0f, 1.0f);
            ImGui::DragInt2("drag int2", vec4i, 1, 0, 255);
            ImGui::InputInt2("input int2", vec4i);
            ImGui::SliderInt2("slider int2", vec4i, 0, 255);
            ImGui::Spacing();

            ImGui::InputFloat3("input float3", vec4f);
            ImGui::DragFloat3("drag float3", vec4f, 0.01f, 0.0f, 1.0f);
            ImGui::SliderFloat3("slider float3", vec4f, 0.0f, 1.0f);
            ImGui::DragInt3("drag int3", vec4i, 1, 0, 255);
            ImGui::InputInt3("input int3", vec4i);
            ImGui::SliderInt3("slider int3", vec4i, 0, 255);
            ImGui::Spacing();

            ImGui::InputFloat4("input float4", vec4f);
            ImGui::DragFloat4("drag float4", vec4f, 0.01f, 0.0f, 1.0f);
            ImGui::SliderFloat4("slider float4", vec4f, 0.0f, 1.0f);
            ImGui::InputInt4("input int4", vec4i);
            ImGui::DragInt4("drag int4", vec4i, 1, 0, 255);
            ImGui::SliderInt4("slider int4", vec4i, 0, 255);

            ImGui::Indent();
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Vertical Sliders"))
        {
            ImGui::Unindent();
            const float spacing = 4;
            ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(spacing, spacing));

            static int int_value = 0;
            ImGui::VSliderInt("##int", ImVec2(18,160), &int_value, 0, 5);
            ImGui::SameLine();

            static float values[7] = { 0.0f, 0.60f, 0.35f, 0.9f, 0.70f, 0.20f, 0.0f };
            ImGui::PushID("set1");
            for (int i = 0; i < 7; i++)
            {
                if (i > 0) ImGui::SameLine();
                ImGui::PushID(i);
                ImGui::PushStyleColor(ImGuiCol_FrameBg, ImColor::HSV(i/7.0f, 0.5f, 0.5f));
                ImGui::PushStyleColor(ImGuiCol_FrameBgHovered, ImColor::HSV(i/7.0f, 0.6f, 0.5f));
                ImGui::PushStyleColor(ImGuiCol_FrameBgActive, ImColor::HSV(i/7.0f, 0.7f, 0.5f));
                ImGui::PushStyleColor(ImGuiCol_SliderGrab, ImColor::HSV(i/7.0f, 0.9f, 0.9f));
                ImGui::VSliderFloat("##v", ImVec2(18,160), &values[i], 0.0f, 1.0f, "");
                if (ImGui::IsItemActive() || ImGui::IsItemHovered())
                    ImGui::SetTooltip("%.3f", values[i]);
                ImGui::PopStyleColor(4);
                ImGui::PopID();
            }
            ImGui::PopID();

            ImGui::SameLine();
            ImGui::PushID("set2");
            static float values2[4] = { 0.20f, 0.80f, 0.40f, 0.25f };
            const int rows = 3;
            const ImVec2 small_slider_size(18, (160.0f-(rows-1)*spacing)/rows);
            for (int nx = 0; nx < 4; nx++)
            {
                if (nx > 0) ImGui::SameLine();
                ImGui::BeginGroup();
                for (int ny = 0; ny < rows; ny++)
                {
                    ImGui::PushID(nx*rows+ny);
                    ImGui::VSliderFloat("##v", small_slider_size, &values2[nx], 0.0f, 1.0f, "");
                    if (ImGui::IsItemActive() || ImGui::IsItemHovered())
                        ImGui::SetTooltip("%.3f", values2[nx]);
                    ImGui::PopID();
                }
                ImGui::EndGroup();
            }
            ImGui::PopID();

            ImGui::SameLine();
            ImGui::PushID("set3");
            for (int i = 0; i < 4; i++)
            {
                if (i > 0) ImGui::SameLine();
                ImGui::PushID(i);
                ImGui::PushStyleVar(ImGuiStyleVar_GrabMinSize, 40);
                ImGui::VSliderFloat("##v", ImVec2(40,160), &values[i], 0.0f, 1.0f, "%.2f\nsec");
                ImGui::PopStyleVar();
                ImGui::PopID();
            }
            ImGui::PopID();
            ImGui::PopStyleVar();

            ImGui::Indent();
            ImGui::TreePop();
        }
    }

    if (ImGui::CollapsingHeader("Graphs widgets"))
    {
        static bool animate = true;
        ImGui::Checkbox("Animate", &animate);

        static float arr[] = { 0.6f, 0.1f, 1.0f, 0.5f, 0.92f, 0.1f, 0.2f };
        ImGui::PlotLines("Frame Times", arr, ((int)(sizeof(arr)/sizeof(*arr))));

        
        
        static float values[90] = { 0 };
        static int values_offset = 0;
        if (animate)
        {
            static float refresh_time = ImGui::GetTime(); 
            for (; ImGui::GetTime() > refresh_time + 1.0f/60.0f; refresh_time += 1.0f/60.0f)
            {
                static float phase = 0.0f;
                values[values_offset] = cosf(phase);
                values_offset = (values_offset+1) % ((int)(sizeof(values)/sizeof(*values)));
                phase += 0.10f*values_offset;
            }
        }
        ImGui::PlotLines("Lines", values, ((int)(sizeof(values)/sizeof(*values))), values_offset, "avg 0.0", -1.0f, 1.0f, ImVec2(0,80));
        ImGui::PlotHistogram("Histogram", arr, ((int)(sizeof(arr)/sizeof(*arr))), 0, 0, 0.0f, 1.0f, ImVec2(0,80));

        
        
        struct Funcs
        {
            static float Sin(void*, int i) { return sinf(i * 0.1f); }
            static float Saw(void*, int i) { return (i & 1) ? 1.0f : 0.0f; }
        };
        static int func_type = 0, display_count = 70;
        ImGui::Separator();
        ImGui::PushItemWidth(100); ImGui::Combo("func", &func_type, "Sin\0Saw\0"); ImGui::PopItemWidth();
        ImGui::SameLine();
        ImGui::SliderInt("Sample count", &display_count, 1, 400);
        float (*func)(void*, int) = (func_type == 0) ? Funcs::Sin : Funcs::Saw;
        ImGui::PlotLines("Lines", func, 0, display_count, 0, 0, -1.0f, 1.0f, ImVec2(0,80));
        ImGui::PlotHistogram("Histogram", func, 0, display_count, 0, 0, -1.0f, 1.0f, ImVec2(0,80));
        ImGui::Separator();

        
        static float progress = 0.0f, progress_dir = 1.0f;
        if (animate)
        {
            progress += progress_dir * 0.4f * ImGui::GetIO().DeltaTime;
            if (progress >= +1.1f) { progress = +1.1f; progress_dir *= -1.0f; }
            if (progress <= -0.1f) { progress = -0.1f; progress_dir *= -1.0f; }
        }

        
        ImGui::ProgressBar(progress, ImVec2(0.0f,0.0f));
        ImGui::SameLine(0.0f, ImGui::GetStyle().ItemInnerSpacing.x);
        ImGui::Text("Progress Bar");

        float progress_saturated = (progress < 0.0f) ? 0.0f : (progress > 1.0f) ? 1.0f : progress;
        char buf[32];
        sprintf(buf, "%d/%d", (int)(progress_saturated*1753), 1753);
        ImGui::ProgressBar(progress, ImVec2(0.f,0.f), buf);
    }

    if (ImGui::CollapsingHeader("Layout"))
    {
        if (ImGui::TreeNode("Child regions"))
        {
            ImGui::Text("Without border");
            static int line = 50;
            bool goto_line = ImGui::Button("Goto");
            ImGui::SameLine();
            ImGui::PushItemWidth(100);
            goto_line |= ImGui::InputInt("##Line", &line, 0, 0, ImGuiInputTextFlags_EnterReturnsTrue);
            ImGui::PopItemWidth();
            ImGui::BeginChild("Sub1", ImVec2(ImGui::GetWindowContentRegionWidth() * 0.5f,300), false, ImGuiWindowFlags_HorizontalScrollbar);
            for (int i = 0; i < 100; i++)
            {
                ImGui::Text("%04d: scrollable region", i);
                if (goto_line && line == i)
                    ImGui::SetScrollHere();
            }
            if (goto_line && line >= 100)
                ImGui::SetScrollHere();
            ImGui::EndChild();

            ImGui::SameLine();

            ImGui::PushStyleVar(ImGuiStyleVar_ChildWindowRounding, 5.0f);
            ImGui::BeginChild("Sub2", ImVec2(0,300), true);
            ImGui::Text("With border");
            ImGui::Columns(2);
            for (int i = 0; i < 100; i++)
            {
                if (i == 50)
                    ImGui::NextColumn();
                char buf[32];
                sprintf(buf, "%08x", i*5731);
                ImGui::Button(buf, ImVec2(-1.0f, 0.0f));
            }
            ImGui::EndChild();
            ImGui::PopStyleVar();

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Widgets Width"))
        {
            static float f = 0.0f;
            ImGui::Text("PushItemWidth(100)");
            ImGui::SameLine(); ShowHelpMarker("Fixed width.");
            ImGui::PushItemWidth(100);
            ImGui::DragFloat("float##1", &f);
            ImGui::PopItemWidth();

            ImGui::Text("PushItemWidth(GetWindowWidth() * 0.5f)");
            ImGui::SameLine(); ShowHelpMarker("Half of window width.");
            ImGui::PushItemWidth(ImGui::GetWindowWidth() * 0.5f);
            ImGui::DragFloat("float##2", &f);
            ImGui::PopItemWidth();

            ImGui::Text("PushItemWidth(GetContentRegionAvailWidth() * 0.5f)");
            ImGui::SameLine(); ShowHelpMarker("Half of available width.\n(~ right-cursor_pos)\n(works within a column set)");
            ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.5f);
            ImGui::DragFloat("float##3", &f);
            ImGui::PopItemWidth();

            ImGui::Text("PushItemWidth(-100)");
            ImGui::SameLine(); ShowHelpMarker("Align to right edge minus 100");
            ImGui::PushItemWidth(-100);
            ImGui::DragFloat("float##4", &f);
            ImGui::PopItemWidth();

            ImGui::Text("PushItemWidth(-1)");
            ImGui::SameLine(); ShowHelpMarker("Align to right edge");
            ImGui::PushItemWidth(-1);
            ImGui::DragFloat("float##5", &f);
            ImGui::PopItemWidth();

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Basic Horizontal Layout"))
        {
            ImGui::TextWrapped("(Use ImGui::SameLine() to keep adding items to the right of the preceding item)");

            
            ImGui::Text("Two items: Hello"); ImGui::SameLine();
            ImGui::TextColored(ImVec4(1,1,0,1), "Sailor");

            
            ImGui::Text("More spacing: Hello"); ImGui::SameLine(0, 20);
            ImGui::TextColored(ImVec4(1,1,0,1), "Sailor");

            
            ImGui::AlignFirstTextHeightToWidgets();
            ImGui::Text("Normal buttons"); ImGui::SameLine();
            ImGui::Button("Banana"); ImGui::SameLine();
            ImGui::Button("Apple"); ImGui::SameLine();
            ImGui::Button("Corniflower");

            
            ImGui::Text("Small buttons"); ImGui::SameLine();
            ImGui::SmallButton("Like this one"); ImGui::SameLine();
            ImGui::Text("can fit within a text block.");

            
            ImGui::Text("Aligned");
            ImGui::SameLine(150); ImGui::Text("x=150");
            ImGui::SameLine(300); ImGui::Text("x=300");
            ImGui::Text("Aligned");
            ImGui::SameLine(150); ImGui::SmallButton("x=150");
            ImGui::SameLine(300); ImGui::SmallButton("x=300");

            
            static bool c1=false,c2=false,c3=false,c4=false;
            ImGui::Checkbox("My", &c1); ImGui::SameLine();
            ImGui::Checkbox("Tailor", &c2); ImGui::SameLine();
            ImGui::Checkbox("Is", &c3); ImGui::SameLine();
            ImGui::Checkbox("Rich", &c4);

            
            static float f0=1.0f, f1=2.0f, f2=3.0f;
            ImGui::PushItemWidth(80);
            const char* items[] = { "AAAA", "BBBB", "CCCC", "DDDD" };
            static int item = -1;
            ImGui::Combo("Combo", &item, items, ((int)(sizeof(items)/sizeof(*items)))); ImGui::SameLine();
            ImGui::SliderFloat("X", &f0, 0.0f,5.0f); ImGui::SameLine();
            ImGui::SliderFloat("Y", &f1, 0.0f,5.0f); ImGui::SameLine();
            ImGui::SliderFloat("Z", &f2, 0.0f,5.0f);
            ImGui::PopItemWidth();

            ImGui::PushItemWidth(80);
            ImGui::Text("Lists:");
            static int selection[4] = { 0, 1, 2, 3 };
            for (int i = 0; i < 4; i++)
            {
                if (i > 0) ImGui::SameLine();
                ImGui::PushID(i);
                ImGui::ListBox("", &selection[i], items, ((int)(sizeof(items)/sizeof(*items))));
                ImGui::PopID();
                
            }
            ImGui::PopItemWidth();

            
            ImVec2 sz(30,30);
            ImGui::Button("A", sz); ImGui::SameLine();
            ImGui::Dummy(sz); ImGui::SameLine();
            ImGui::Button("B", sz);

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Groups"))
        {
            ImGui::TextWrapped("(Using ImGui::BeginGroup()/EndGroup() to layout items. BeginGroup() basically locks the horizontal position. EndGroup() bundles the whole group so that you can use functions such as IsItemHovered() on it.)");
            ImGui::BeginGroup();
            {
                ImGui::BeginGroup();
                ImGui::Button("AAA");
                ImGui::SameLine();
                ImGui::Button("BBB");
                ImGui::SameLine();
                ImGui::BeginGroup();
                ImGui::Button("CCC");
                ImGui::Button("DDD");
                ImGui::EndGroup();
                if (ImGui::IsItemHovered())
                    ImGui::SetTooltip("Group hovered");
                ImGui::SameLine();
                ImGui::Button("EEE");
                ImGui::EndGroup();
            }
            
            ImVec2 size = ImGui::GetItemRectSize();
            const float values[5] = { 0.5f, 0.20f, 0.80f, 0.60f, 0.25f };
            ImGui::PlotHistogram("##values", values, ((int)(sizeof(values)/sizeof(*values))), 0, 0, 0.0f, 1.0f, size);

            ImGui::Button("ACTION", ImVec2((size.x - ImGui::GetStyle().ItemSpacing.x)*0.5f,size.y));
            ImGui::SameLine();
            ImGui::Button("REACTION", ImVec2((size.x - ImGui::GetStyle().ItemSpacing.x)*0.5f,size.y));
            ImGui::EndGroup();
            ImGui::SameLine();

            ImGui::Button("LEVERAGE\nBUZZWORD", size);
            ImGui::SameLine();

            ImGui::ListBoxHeader("List", size);
            ImGui::Selectable("Selected", true);
            ImGui::Selectable("Not Selected", false);
            ImGui::ListBoxFooter();

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Text Baseline Alignment"))
        {
            ImGui::TextWrapped("(This is testing the vertical alignment that occurs on text to keep it at the same baseline as widgets. Lines only composed of text or \"small\" widgets fit in less vertical spaces than lines with normal widgets)");

            ImGui::Text("One\nTwo\nThree"); ImGui::SameLine();
            ImGui::Text("Hello\nWorld"); ImGui::SameLine();
            ImGui::Text("Banana");

            ImGui::Text("Banana"); ImGui::SameLine();
            ImGui::Text("Hello\nWorld"); ImGui::SameLine();
            ImGui::Text("One\nTwo\nThree");

            ImGui::Button("HOP##1"); ImGui::SameLine();
            ImGui::Text("Banana"); ImGui::SameLine();
            ImGui::Text("Hello\nWorld"); ImGui::SameLine();
            ImGui::Text("Banana");

            ImGui::Button("HOP##2"); ImGui::SameLine();
            ImGui::Text("Hello\nWorld"); ImGui::SameLine();
            ImGui::Text("Banana");

            ImGui::Button("TEST##1"); ImGui::SameLine();
            ImGui::Text("TEST"); ImGui::SameLine();
            ImGui::SmallButton("TEST##2");

            ImGui::AlignFirstTextHeightToWidgets(); 
            ImGui::Text("Text aligned to Widget"); ImGui::SameLine();
            ImGui::Button("Widget##1"); ImGui::SameLine();
            ImGui::Text("Widget"); ImGui::SameLine();
            ImGui::SmallButton("Widget##2");

            
            const float spacing = ImGui::GetStyle().ItemInnerSpacing.x;
            ImGui::Button("Button##1");
            ImGui::SameLine(0.0f, spacing);
            if (ImGui::TreeNode("Node##1")) { for (int i = 0; i < 6; i++) ImGui::BulletText("Item %d..", i); ImGui::TreePop(); }    

            ImGui::AlignFirstTextHeightToWidgets();         
            bool node_open = ImGui::TreeNode("Node##2");  
            ImGui::SameLine(0.0f, spacing); ImGui::Button("Button##2");
            if (node_open) { for (int i = 0; i < 6; i++) ImGui::BulletText("Item %d..", i); ImGui::TreePop(); }   

            
            ImGui::Button("Button##3");
            ImGui::SameLine(0.0f, spacing);
            ImGui::BulletText("Bullet text");

            ImGui::AlignFirstTextHeightToWidgets();
            ImGui::BulletText("Node");
            ImGui::SameLine(0.0f, spacing); ImGui::Button("Button##4");

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Scrolling"))
        {
            ImGui::TextWrapped("(Use SetScrollHere() or SetScrollFromPosY() to scroll to a given position.)");
            static bool track = true;
            static int track_line = 50, scroll_to_px = 200;
            ImGui::Checkbox("Track", &track);
            ImGui::PushItemWidth(100);
            ImGui::SameLine(130); track |= ImGui::DragInt("##line", &track_line, 0.25f, 0, 99, "Line %.0f");
            bool scroll_to = ImGui::Button("Scroll To");
            ImGui::SameLine(130); scroll_to |= ImGui::DragInt("##pos_y", &scroll_to_px, 1.00f, 0, 9999, "y = %.0f px");
            ImGui::PopItemWidth();
            if (scroll_to) track = false;

            for (int i = 0; i < 5; i++)
            {
                if (i > 0) ImGui::SameLine();
                ImGui::BeginGroup();
                ImGui::Text("%s", i == 0 ? "Top" : i == 1 ? "25%" : i == 2 ? "Center" : i == 3 ? "75%" : "Bottom");
                ImGui::BeginChild(ImGui::GetID((void*)(intptr_t)i), ImVec2(ImGui::GetWindowWidth() * 0.17f, 200.0f), true);
                if (scroll_to)
                    ImGui::SetScrollFromPosY(ImGui::GetCursorStartPos().y + scroll_to_px, i * 0.25f);
                for (int line = 0; line < 100; line++)
                {
                    if (track && line == track_line)
                    {
                        ImGui::TextColored(ImColor(255,255,0), "Line %d", line);
                        ImGui::SetScrollHere(i * 0.25f); 
                    }
                    else
                    {
                        ImGui::Text("Line %d", line);
                    }
                }
                ImGui::EndChild();
                ImGui::EndGroup();
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Horizontal Scrolling"))
        {
            ImGui::Bullet(); ImGui::TextWrapped("Horizontal scrolling for a window has to be enabled explicitly via the ImGuiWindowFlags_HorizontalScrollbar flag.");
            ImGui::Bullet(); ImGui::TextWrapped("You may want to explicitly specify content width by calling SetNextWindowContentWidth() before Begin().");
            static int lines = 7;
            ImGui::SliderInt("Lines", &lines, 1, 15);
            ImGui::PushStyleVar(ImGuiStyleVar_FrameRounding, 3.0f);
            ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(2.0f, 1.0f));
            ImGui::BeginChild("scrolling", ImVec2(0, ImGui::GetItemsLineHeightWithSpacing()*7 + 30), true, ImGuiWindowFlags_HorizontalScrollbar);
            for (int line = 0; line < lines; line++)
            {
                
                
                int num_buttons = 10 + ((line & 1) ? line * 9 : line * 3);
                for (int n = 0; n < num_buttons; n++)
                {
                    if (n > 0) ImGui::SameLine();
                    ImGui::PushID(n + line * 1000);
                    char num_buf[16];
                    const char* label = (!(n%15)) ? "FizzBuzz" : (!(n%3)) ? "Fizz" : (!(n%5)) ? "Buzz" : (sprintf(num_buf, "%d", n), num_buf);
                    float hue = n*0.05f;
                    ImGui::PushStyleColor(ImGuiCol_Button, ImColor::HSV(hue, 0.6f, 0.6f));
                    ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImColor::HSV(hue, 0.7f, 0.7f));
                    ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImColor::HSV(hue, 0.8f, 0.8f));
                    ImGui::Button(label, ImVec2(40.0f + sinf((float)(line + n)) * 20.0f, 0.0f));
                    ImGui::PopStyleColor(3);
                    ImGui::PopID();
                }
            }
            ImGui::EndChild();
            ImGui::PopStyleVar(2);
            float scroll_x_delta = 0.0f;
            ImGui::SmallButton("<<"); if (ImGui::IsItemActive()) scroll_x_delta = -ImGui::GetIO().DeltaTime * 1000.0f;
            ImGui::SameLine(); ImGui::Text("Scroll from code"); ImGui::SameLine();
            ImGui::SmallButton(">>"); if (ImGui::IsItemActive()) scroll_x_delta = +ImGui::GetIO().DeltaTime * 1000.0f;
            if (scroll_x_delta != 0.0f)
            {
                ImGui::BeginChild("scrolling"); 
                ImGui::SetScrollX(ImGui::GetScrollX() + scroll_x_delta);
                ImGui::End();
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Clipping"))
        {
            static ImVec2 size(100, 100), offset(50, 20);
            ImGui::TextWrapped("On a per-widget basis we are occasionally clipping text CPU-side if it won't fit in its frame. Otherwise we are doing coarser clipping + passing a scissor rectangle to the renderer. The system is designed to try minimizing both execution and CPU/GPU rendering cost.");
            ImGui::DragFloat2("size", (float*)&size, 0.5f, 0.0f, 200.0f, "%.0f");
            ImGui::TextWrapped("(Click and drag)");
            ImVec2 pos = ImGui::GetCursorScreenPos();
            ImVec4 clip_rect(pos.x, pos.y, pos.x+size.x, pos.y+size.y);
            ImGui::InvisibleButton("##dummy", size);
            if (ImGui::IsItemActive() && ImGui::IsMouseDragging()) { offset.x += ImGui::GetIO().MouseDelta.x; offset.y += ImGui::GetIO().MouseDelta.y; }
            ImGui::GetWindowDrawList()->AddRectFilled(pos, ImVec2(pos.x+size.x,pos.y+size.y), ImColor(90,90,120,255));
            ImGui::GetWindowDrawList()->AddText(ImGui::GetFont(), ImGui::GetFontSize()*2.0f, ImVec2(pos.x+offset.x,pos.y+offset.y), ImColor(255,255,255,255), "Line 1 hello\nLine 2 clip me!", 0, 0.0f, &clip_rect);
            ImGui::TreePop();
        }
    }

    if (ImGui::CollapsingHeader("Popups & Modal windows"))
    {
        if (ImGui::TreeNode("Popups"))
        {
            ImGui::TextWrapped("When a popup is active, it inhibits interacting with windows that are behind the popup. Clicking outside the popup closes it.");

            static int selected_fish = -1;
            const char* names[] = { "Bream", "Haddock", "Mackerel", "Pollock", "Tilefish" };
            static bool toggles[] = { true, false, false, false, false };

            
            
            if (ImGui::Button("Select.."))
                ImGui::OpenPopup("select");
            ImGui::SameLine();
            ImGui::Text(selected_fish == -1 ? "<None>" : names[selected_fish]);
            if (ImGui::BeginPopup("select"))
            {
                ImGui::Text("Aquarium");
                ImGui::Separator();
                for (int i = 0; i < ((int)(sizeof(names)/sizeof(*names))); i++)
                    if (ImGui::Selectable(names[i]))
                        selected_fish = i;
                ImGui::EndPopup();
            }

            
            if (ImGui::Button("Toggle.."))
                ImGui::OpenPopup("toggle");
            if (ImGui::BeginPopup("toggle"))
            {
                for (int i = 0; i < ((int)(sizeof(names)/sizeof(*names))); i++)
                    ImGui::MenuItem(names[i], "", &toggles[i]);
                if (ImGui::BeginMenu("Sub-menu"))
                {
                    ImGui::MenuItem("Click me");
                    ImGui::EndMenu();
                }

                ImGui::Separator();
                ImGui::Text("Tooltip here");
                if (ImGui::IsItemHovered())
                    ImGui::SetTooltip("I am a tooltip over a popup");

                if (ImGui::Button("Stacked Popup"))
                    ImGui::OpenPopup("another popup");
                if (ImGui::BeginPopup("another popup"))
                {
                    for (int i = 0; i < ((int)(sizeof(names)/sizeof(*names))); i++)
                        ImGui::MenuItem(names[i], "", &toggles[i]);
                    if (ImGui::BeginMenu("Sub-menu"))
                    {
                        ImGui::MenuItem("Click me");
                        ImGui::EndMenu();
                    }
                    ImGui::EndPopup();
                }
                ImGui::EndPopup();
            }

            if (ImGui::Button("Popup Menu.."))
                ImGui::OpenPopup("FilePopup");
            if (ImGui::BeginPopup("FilePopup"))
            {
                ShowExampleMenuFile();
                ImGui::EndPopup();
            }

            ImGui::Spacing();
            ImGui::TextWrapped("Below we are testing adding menu items to a regular window. It's rather unusual but should work!");
            ImGui::Separator();
            
            
            
            ImGui::PushID("foo");
            ImGui::MenuItem("Menu item", "CTRL+M");
            if (ImGui::BeginMenu("Menu inside a regular window"))
            {
                ShowExampleMenuFile();
                ImGui::EndMenu();
            }
            ImGui::PopID();
            ImGui::Separator();

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Context menus"))
        {
            static float value = 0.5f;
            ImGui::Text("Value = %.3f (<-- right-click here)", value);
            if (ImGui::BeginPopupContextItem("item context menu"))
            {
                if (ImGui::Selectable("Set to zero")) value = 0.0f;
                if (ImGui::Selectable("Set to PI")) value = 3.1415f;
                ImGui::EndPopup();
            }

            static ImVec4 color = ImColor(0.8f, 0.5f, 1.0f, 1.0f);
            ImGui::ColorButton(color);
            if (ImGui::BeginPopupContextItem("color context menu"))
            {
                ImGui::Text("Edit color");
                ImGui::ColorEdit3("##edit", (float*)&color);
                if (ImGui::Button("Close"))
                    ImGui::CloseCurrentPopup();
                ImGui::EndPopup();
            }
            ImGui::SameLine(); ImGui::Text("(<-- right-click here)");

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Modals"))
        {
            ImGui::TextWrapped("Modal windows are like popups but the user cannot close them by clicking outside the window.");

            if (ImGui::Button("Delete.."))
                ImGui::OpenPopup("Delete?");
            if (ImGui::BeginPopupModal("Delete?", 0, ImGuiWindowFlags_AlwaysAutoResize))
            {
                ImGui::Text("All those beautiful files will be deleted.\nThis operation cannot be undone!\n\n");
                ImGui::Separator();

                
                

                static bool dont_ask_me_next_time = false;
                ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(0,0));
                ImGui::Checkbox("Don't ask me next time", &dont_ask_me_next_time);
                ImGui::PopStyleVar();

                if (ImGui::Button("OK", ImVec2(120,0))) { ImGui::CloseCurrentPopup(); }
                ImGui::SameLine();
                if (ImGui::Button("Cancel", ImVec2(120,0))) { ImGui::CloseCurrentPopup(); }
                ImGui::EndPopup();
            }

            if (ImGui::Button("Stacked modals.."))
                ImGui::OpenPopup("Stacked 1");
            if (ImGui::BeginPopupModal("Stacked 1"))
            {
                ImGui::Text("Hello from Stacked The First");

                if (ImGui::Button("Another one.."))
                    ImGui::OpenPopup("Stacked 2");
                if (ImGui::BeginPopupModal("Stacked 2"))
                {
                    ImGui::Text("Hello from Stacked The Second");
                    if (ImGui::Button("Close"))
                        ImGui::CloseCurrentPopup();
                    ImGui::EndPopup();
                }

                if (ImGui::Button("Close"))
                    ImGui::CloseCurrentPopup();
                ImGui::EndPopup();
            }

            ImGui::TreePop();
        }
    }

    if (ImGui::CollapsingHeader("Columns"))
    {
        
        if (ImGui::TreeNode("Basic"))
        {
            ImGui::Text("Without border:");
            ImGui::Columns(3, "mycolumns3", false);  
            ImGui::Separator();
            for (int n = 0; n < 14; n++)
            {
                char label[32];
                sprintf(label, "Item %d", n);
                if (ImGui::Selectable(label)) {}
                
                ImGui::NextColumn();
            }
            ImGui::Columns(1);
            ImGui::Separator();

            ImGui::Text("With border:");
            ImGui::Columns(4, "mycolumns"); 
            ImGui::Separator();
            ImGui::Text("ID"); ImGui::NextColumn();
            ImGui::Text("Name"); ImGui::NextColumn();
            ImGui::Text("Path"); ImGui::NextColumn();
            ImGui::Text("Flags"); ImGui::NextColumn();
            ImGui::Separator();
            const char* names[3] = { "One", "Two", "Three" };
            const char* paths[3] = { "/path/one", "/path/two", "/path/three" };
            static int selected = -1;
            for (int i = 0; i < 3; i++)
            {
                char label[32];
                sprintf(label, "%04d", i);
                if (ImGui::Selectable(label, selected == i, ImGuiSelectableFlags_SpanAllColumns))
                    selected = i;
                ImGui::NextColumn();
                ImGui::Text(names[i]); ImGui::NextColumn();
                ImGui::Text(paths[i]); ImGui::NextColumn();
                ImGui::Text("...."); ImGui::NextColumn();
            }
            ImGui::Columns(1);
            ImGui::Separator();
            ImGui::TreePop();
        }

        
        
























        
        if (ImGui::TreeNode("Mixed items"))
        {
            ImGui::Columns(3, "mixed");
            ImGui::Separator();

            ImGui::Text("Hello");
            ImGui::Button("Banana");
            ImGui::NextColumn();

            ImGui::Text("ImGui");
            ImGui::Button("Apple");
            static float foo = 1.0f;
            ImGui::InputFloat("red", &foo, 0.05f, 0, 3);
            ImGui::Text("An extra line here.");
            ImGui::NextColumn();

            ImGui::Text("Sailor");
            ImGui::Button("Corniflower");
            static float bar = 1.0f;
            ImGui::InputFloat("blue", &bar, 0.05f, 0, 3);
            ImGui::NextColumn();

            if (ImGui::CollapsingHeader("Category A")) ImGui::Text("Blah blah blah"); ImGui::NextColumn();
            if (ImGui::CollapsingHeader("Category B")) ImGui::Text("Blah blah blah"); ImGui::NextColumn();
            if (ImGui::CollapsingHeader("Category C")) ImGui::Text("Blah blah blah"); ImGui::NextColumn();
            ImGui::Columns(1);
            ImGui::Separator();
            ImGui::TreePop();
        }

        
        if (ImGui::TreeNode("Word-wrapping"))
        {
            ImGui::Columns(2, "word-wrapping");
            ImGui::Separator();
            ImGui::TextWrapped("The quick brown fox jumps over the lazy dog.");
            ImGui::TextWrapped("Hello Left");
            ImGui::NextColumn();
            ImGui::TextWrapped("The quick brown fox jumps over the lazy dog.");
            ImGui::TextWrapped("Hello Right");
            ImGui::Columns(1);
            ImGui::Separator();
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Borders"))
        {
            static bool h_borders = true;
            static bool v_borders = true;
            ImGui::Checkbox("horizontal", &h_borders);
            ImGui::SameLine();
            ImGui::Checkbox("vertical", &v_borders);
            ImGui::Columns(4, 0, v_borders);
            if (h_borders) ImGui::Separator();
            for (int i = 0; i < 8; i++)
            {
                ImGui::Text("%c%c%c", 'a'+i, 'a'+i, 'a'+i);
                ImGui::NextColumn();
            }
            ImGui::Columns(1);
            if (h_borders) ImGui::Separator();
            ImGui::TreePop();
        }

        bool node_open = ImGui::TreeNode("Tree within single cell");
        ImGui::SameLine(); ShowHelpMarker("NB: Tree node must be poped before ending the cell.\nThere's no storage of state per-cell.");
        if (node_open)
        {
            ImGui::Columns(2, "tree items");
            ImGui::Separator();
            if (ImGui::TreeNode("Hello")) { ImGui::BulletText("Sailor"); ImGui::TreePop(); } ImGui::NextColumn();
            if (ImGui::TreeNode("Bonjour")) { ImGui::BulletText("Marin"); ImGui::TreePop(); } ImGui::NextColumn();
            ImGui::Columns(1);
            ImGui::Separator();
            ImGui::TreePop();
        }
    }

    if (ImGui::CollapsingHeader("Filtering"))
    {
        static ImGuiTextFilter filter;
        ImGui::Text("Filter usage:\n"
                    "  \"\"         display all lines\n"
                    "  \"xxx\"      display lines containing \"xxx\"\n"
                    "  \"xxx,yyy\"  display lines containing \"xxx\" or \"yyy\"\n"
                    "  \"-xxx\"     hide lines containing \"xxx\"");
        filter.Draw();
        const char* lines[] = { "aaa1.c", "bbb1.c", "ccc1.c", "aaa2.cpp", "bbb2.cpp", "ccc2.cpp", "abc.h", "hello, world" };
        for (int i = 0; i < ((int)(sizeof(lines)/sizeof(*lines))); i++)
            if (filter.PassFilter(lines[i]))
                ImGui::BulletText("%s", lines[i]);
    }

    if (ImGui::CollapsingHeader("Keyboard, Mouse & Focus"))
    {
        if (ImGui::TreeNode("Tabbing"))
        {
            ImGui::Text("Use TAB/SHIFT+TAB to cycle through keyboard editable fields.");
            static char buf[32] = "dummy";
            ImGui::InputText("1", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            ImGui::InputText("2", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            ImGui::InputText("3", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            ImGui::PushAllowKeyboardFocus(false);
            ImGui::InputText("4 (tab skip)", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            
            ImGui::PopAllowKeyboardFocus();
            ImGui::InputText("5", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Focus from code"))
        {
            bool focus_1 = ImGui::Button("Focus on 1"); ImGui::SameLine();
            bool focus_2 = ImGui::Button("Focus on 2"); ImGui::SameLine();
            bool focus_3 = ImGui::Button("Focus on 3");
            int has_focus = 0;
            static char buf[128] = "click on a button to set focus";

            if (focus_1) ImGui::SetKeyboardFocusHere();
            ImGui::InputText("1", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            if (ImGui::IsItemActive()) has_focus = 1;

            if (focus_2) ImGui::SetKeyboardFocusHere();
            ImGui::InputText("2", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            if (ImGui::IsItemActive()) has_focus = 2;

            ImGui::PushAllowKeyboardFocus(false);
            if (focus_3) ImGui::SetKeyboardFocusHere();
            ImGui::InputText("3 (tab skip)", buf, ((int)(sizeof(buf)/sizeof(*buf))));
            if (ImGui::IsItemActive()) has_focus = 3;
            ImGui::PopAllowKeyboardFocus();
            if (has_focus)
                ImGui::Text("Item with focus: %d", has_focus);
            else
                ImGui::Text("Item with focus: <none>");
            ImGui::TextWrapped("Cursor & selection are preserved when refocusing last used item in code.");
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Dragging"))
        {
            ImGui::TextWrapped("You can use ImGui::GetMouseDragDelta(0) to query for the dragged amount on any widget.");
            ImGui::Button("Drag Me");
            if (ImGui::IsItemActive())
            {
                
                ImDrawList* draw_list = ImGui::GetWindowDrawList();
                draw_list->PushClipRectFullScreen();
                draw_list->AddLine(ImGui::CalcItemRectClosestPoint(ImGui::GetIO().MousePos, true, -2.0f), ImGui::GetIO().MousePos, ImColor(ImGui::GetStyle().Colors[ImGuiCol_Button]), 4.0f);
                draw_list->PopClipRect();
                ImVec2 value_raw = ImGui::GetMouseDragDelta(0, 0.0f);
                ImVec2 value_with_lock_threshold = ImGui::GetMouseDragDelta(0);
                ImVec2 mouse_delta = ImGui::GetIO().MouseDelta;
                ImGui::SameLine(); ImGui::Text("Raw (%.1f, %.1f), WithLockThresold (%.1f, %.1f), MouseDelta (%.1f, %.1f)", value_raw.x, value_raw.y, value_with_lock_threshold.x, value_with_lock_threshold.y, mouse_delta.x, mouse_delta.y);
            }
            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Keyboard & Mouse State"))
        {
            ImGuiIO& io = ImGui::GetIO();

            ImGui::Text("MousePos: (%g, %g)", io.MousePos.x, io.MousePos.y);
            ImGui::Text("Mouse down:");     for (int i = 0; i < ((int)(sizeof(io.MouseDown)/sizeof(*io.MouseDown))); i++) if (io.MouseDownDuration[i] >= 0.0f)   { ImGui::SameLine(); ImGui::Text("b%d (%.02f secs)", i, io.MouseDownDuration[i]); }
            ImGui::Text("Mouse clicked:");  for (int i = 0; i < ((int)(sizeof(io.MouseDown)/sizeof(*io.MouseDown))); i++) if (ImGui::IsMouseClicked(i))          { ImGui::SameLine(); ImGui::Text("b%d", i); }
            ImGui::Text("Mouse dbl-clicked:"); for (int i = 0; i < ((int)(sizeof(io.MouseDown)/sizeof(*io.MouseDown))); i++) if (ImGui::IsMouseDoubleClicked(i)) { ImGui::SameLine(); ImGui::Text("b%d", i); }
            ImGui::Text("Mouse released:"); for (int i = 0; i < ((int)(sizeof(io.MouseDown)/sizeof(*io.MouseDown))); i++) if (ImGui::IsMouseReleased(i))         { ImGui::SameLine(); ImGui::Text("b%d", i); }
            ImGui::Text("MouseWheel: %.1f", io.MouseWheel);

            ImGui::Text("Keys down:");      for (int i = 0; i < ((int)(sizeof(io.KeysDown)/sizeof(*io.KeysDown))); i++) if (io.KeysDownDuration[i] >= 0.0f)     { ImGui::SameLine(); ImGui::Text("%d (%.02f secs)", i, io.KeysDownDuration[i]); }
            ImGui::Text("Keys pressed:");   for (int i = 0; i < ((int)(sizeof(io.KeysDown)/sizeof(*io.KeysDown))); i++) if (ImGui::IsKeyPressed(i))             { ImGui::SameLine(); ImGui::Text("%d", i); }
            ImGui::Text("Keys release:");   for (int i = 0; i < ((int)(sizeof(io.KeysDown)/sizeof(*io.KeysDown))); i++) if (ImGui::IsKeyReleased(i))            { ImGui::SameLine(); ImGui::Text("%d", i); }
            ImGui::Text("KeyMods: %s%s%s%s", io.KeyCtrl ? "CTRL " : "", io.KeyShift ? "SHIFT " : "", io.KeyAlt ? "ALT " : "", io.KeySuper ? "SUPER " : "");

            ImGui::Text("WantCaptureMouse: %s", io.WantCaptureMouse ? "true" : "false");
            ImGui::Text("WantCaptureKeyboard: %s", io.WantCaptureKeyboard ? "true" : "false");
            ImGui::Text("WantTextInput: %s", io.WantTextInput ? "true" : "false");

            ImGui::Button("Hovering me sets the\nkeyboard capture flag");
            if (ImGui::IsItemHovered())
                ImGui::CaptureKeyboardFromApp(true);
            ImGui::SameLine();
            ImGui::Button("Holding me clears the\nthe keyboard capture flag");
            if (ImGui::IsItemActive())
                ImGui::CaptureKeyboardFromApp(false);

            ImGui::TreePop();
        }

        if (ImGui::TreeNode("Mouse cursors"))
        {
            ImGui::TextWrapped("Your application can render a different mouse cursor based on what ImGui::GetMouseCursor() returns. You can also set io.MouseDrawCursor to ask ImGui to render the cursor for you in software.");
            ImGui::Checkbox("io.MouseDrawCursor", &ImGui::GetIO().MouseDrawCursor);
            ImGui::Text("Hover to see mouse cursors:");
            for (int i = 0; i < ImGuiMouseCursor_Count_; i++)
            {
                char label[32];
                sprintf(label, "Mouse cursor %d", i);
                ImGui::Bullet(); ImGui::Selectable(label, false);
                if (ImGui::IsItemHovered())
                    ImGui::SetMouseCursor(i);
            }
            ImGui::TreePop();
        }
    }

    ImGui::End();
}

void ImGui::ShowStyleEditor(ImGuiStyle* ref)
{
    ImGuiStyle& style = ImGui::GetStyle();

    
    const ImGuiStyle default_style; 
    if (ImGui::Button("Revert Style"))
        style = ref ? *ref : default_style;

    if (ref)
    {
        ImGui::SameLine();
        if (ImGui::Button("Save Style"))
            *ref = style;
    }

    ImGui::PushItemWidth(ImGui::GetWindowWidth() * 0.55f);

    if (ImGui::TreeNode("Rendering"))
    {
        ImGui::Checkbox("Anti-aliased lines", &style.AntiAliasedLines);
        ImGui::Checkbox("Anti-aliased shapes", &style.AntiAliasedShapes);
        ImGui::PushItemWidth(100);
        ImGui::DragFloat("Curve Tessellation Tolerance", &style.CurveTessellationTol, 0.02f, 0.10f, 3.402823466e+38F, 0, 2.0f);
        if (style.CurveTessellationTol < 0.0f) style.CurveTessellationTol = 0.10f;
        ImGui::DragFloat("Global Alpha", &style.Alpha, 0.005f, 0.20f, 1.0f, "%.2f"); 
        ImGui::PopItemWidth();
        ImGui::TreePop();
    }

    if (ImGui::TreeNode("Settings"))
    {
        ImGui::SliderFloat2("WindowPadding", (float*)&style.WindowPadding, 0.0f, 20.0f, "%.0f");
        ImGui::SliderFloat("WindowRounding", &style.WindowRounding, 0.0f, 16.0f, "%.0f");
        ImGui::SliderFloat("ChildWindowRounding", &style.ChildWindowRounding, 0.0f, 16.0f, "%.0f");
        ImGui::SliderFloat2("FramePadding", (float*)&style.FramePadding, 0.0f, 20.0f, "%.0f");
        ImGui::SliderFloat("FrameRounding", &style.FrameRounding, 0.0f, 16.0f, "%.0f");
        ImGui::SliderFloat2("ItemSpacing", (float*)&style.ItemSpacing, 0.0f, 20.0f, "%.0f");
        ImGui::SliderFloat2("ItemInnerSpacing", (float*)&style.ItemInnerSpacing, 0.0f, 20.0f, "%.0f");
        ImGui::SliderFloat2("TouchExtraPadding", (float*)&style.TouchExtraPadding, 0.0f, 10.0f, "%.0f");
        ImGui::SliderFloat("IndentSpacing", &style.IndentSpacing, 0.0f, 30.0f, "%.0f");
        ImGui::SliderFloat("ScrollbarSize", &style.ScrollbarSize, 1.0f, 20.0f, "%.0f");
        ImGui::SliderFloat("ScrollbarRounding", &style.ScrollbarRounding, 0.0f, 16.0f, "%.0f");
        ImGui::SliderFloat("GrabMinSize", &style.GrabMinSize, 1.0f, 20.0f, "%.0f");
        ImGui::SliderFloat("GrabRounding", &style.GrabRounding, 0.0f, 16.0f, "%.0f");
        ImGui::Text("Alignment");
        ImGui::SliderFloat2("WindowTitleAlign", (float*)&style.WindowTitleAlign, 0.0f, 1.0f, "%.2f");
        ImGui::SliderFloat2("ButtonTextAlign", (float*)&style.ButtonTextAlign, 0.0f, 1.0f, "%.2f"); ImGui::SameLine(); ShowHelpMarker("Alignment applies when a button is larger than its text content.");
        ImGui::TreePop();
    }

    if (ImGui::TreeNode("Colors"))
    {
        static int output_dest = 0;
        static bool output_only_modified = false;
        if (ImGui::Button("Copy Colors"))
        {
            if (output_dest == 0)
                ImGui::LogToClipboard();
            else
                ImGui::LogToTTY();
            ImGui::LogText("ImGuiStyle& style = ImGui::GetStyle();" "\r\n");
            for (int i = 0; i < ImGuiCol_COUNT; i++)
            {
                const ImVec4& col = style.Colors[i];
                const char* name = ImGui::GetStyleColName(i);
                if (!output_only_modified || memcmp(&col, (ref ? &ref->Colors[i] : &default_style.Colors[i]), sizeof(ImVec4)) != 0)
                    ImGui::LogText("style.Colors[ImGuiCol_%s]%*s= ImVec4(%.2ff, %.2ff, %.2ff, %.2ff);" "\r\n", name, 22 - (int)strlen(name), "", col.x, col.y, col.z, col.w);
            }
            ImGui::LogFinish();
        }
        ImGui::SameLine(); ImGui::PushItemWidth(120); ImGui::Combo("##output_type", &output_dest, "To Clipboard\0To TTY\0"); ImGui::PopItemWidth();
        ImGui::SameLine(); ImGui::Checkbox("Only Modified Fields", &output_only_modified);

        static ImGuiColorEditMode edit_mode = ImGuiColorEditMode_RGB;
        ImGui::RadioButton("RGB", &edit_mode, ImGuiColorEditMode_RGB);
        ImGui::SameLine();
        ImGui::RadioButton("HSV", &edit_mode, ImGuiColorEditMode_HSV);
        ImGui::SameLine();
        ImGui::RadioButton("HEX", &edit_mode, ImGuiColorEditMode_HEX);
        

        static ImGuiTextFilter filter;
        filter.Draw("Filter colors", 200);

        ImGui::BeginChild("#colors", ImVec2(0, 300), true, ImGuiWindowFlags_AlwaysVerticalScrollbar);
        ImGui::PushItemWidth(-160);
        ImGui::ColorEditMode(edit_mode);
        for (int i = 0; i < ImGuiCol_COUNT; i++)
        {
            const char* name = ImGui::GetStyleColName(i);
            if (!filter.PassFilter(name))
                continue;
            ImGui::PushID(i);
            ImGui::ColorEdit4(name, (float*)&style.Colors[i], true);
            if (memcmp(&style.Colors[i], (ref ? &ref->Colors[i] : &default_style.Colors[i]), sizeof(ImVec4)) != 0)
            {
                ImGui::SameLine(); if (ImGui::Button("Revert")) style.Colors[i] = ref ? ref->Colors[i] : default_style.Colors[i];
                if (ref) { ImGui::SameLine(); if (ImGui::Button("Save")) ref->Colors[i] = style.Colors[i]; }
            }
            ImGui::PopID();
        }
        ImGui::PopItemWidth();
        ImGui::EndChild();

        ImGui::TreePop();
    }

    if (ImGui::TreeNode("Fonts", "Fonts (%d)", ImGui::GetIO().Fonts->Fonts.Size))
    {
        ImGui::SameLine(); ShowHelpMarker("Tip: Load fonts with io.Fonts->AddFontFromFileTTF()\nbefore calling io.Fonts->GetTex* functions.");
        ImFontAtlas* atlas = ImGui::GetIO().Fonts;
        if (ImGui::TreeNode("Atlas texture", "Atlas texture (%dx%d pixels)", atlas->TexWidth, atlas->TexHeight))
        {
            ImGui::Image(atlas->TexID, ImVec2((float)atlas->TexWidth, (float)atlas->TexHeight), ImVec2(0,0), ImVec2(1,1), ImColor(255,255,255,255), ImColor(255,255,255,128));
            ImGui::TreePop();
        }
        ImGui::PushItemWidth(100);
        for (int i = 0; i < atlas->Fonts.Size; i++)
        {
            ImFont* font = atlas->Fonts[i];
            ImGui::BulletText("Font %d: \'%s\', %.2f px, %d glyphs", i, font->ConfigData ? font->ConfigData[0].Name : "", font->FontSize, font->Glyphs.Size);
            ImGui::TreePush((void*)(intptr_t)i);
            ImGui::SameLine(); if (ImGui::SmallButton("Set as default")) ImGui::GetIO().FontDefault = font;
            ImGui::PushFont(font);
            ImGui::Text("The quick brown fox jumps over the lazy dog");
            ImGui::PopFont();
            if (ImGui::TreeNode("Details"))
            {
                ImGui::DragFloat("Font scale", &font->Scale, 0.005f, 0.3f, 2.0f, "%.1f");   
                ImGui::SameLine(); ShowHelpMarker("Note than the default embedded font is NOT meant to be scaled.\n\nFont are currently rendered into bitmaps at a given size at the time of building the atlas. You may oversample them to get some flexibility with scaling. You can also render at multiple sizes and select which one to use at runtime.\n\n(Glimmer of hope: the atlas system should hopefully be rewritten in the future to make scaling more natural and automatic.)");
                ImGui::Text("Ascent: %f, Descent: %f, Height: %f", font->Ascent, font->Descent, font->Ascent - font->Descent);
                ImGui::Text("Fallback character: '%c' (%d)", font->FallbackChar, font->FallbackChar);
                ImGui::Text("Texture surface: %d pixels (approx) ~ %dx%d", font->MetricsTotalSurface, (int)sqrtf((int)font->MetricsTotalSurface), (int)sqrtf((int)font->MetricsTotalSurface));
                for (int config_i = 0; config_i < font->ConfigDataCount; config_i++)
                {
                    ImFontConfig* cfg = &font->ConfigData[config_i];
                    ImGui::BulletText("Input %d: \'%s\', Oversample: (%d,%d), PixelSnapH: %d", config_i, cfg->Name, cfg->OversampleH, cfg->OversampleV, cfg->PixelSnapH);
                }
                if (ImGui::TreeNode("Glyphs", "Glyphs (%d)", font->Glyphs.Size))
                {
                    
                    const ImFont::Glyph* glyph_fallback = font->FallbackGlyph; 
                    font->FallbackGlyph = 0;
                    for (int base = 0; base < 0x10000; base += 256)
                    {
                        int count = 0;
                        for (int n = 0; n < 256; n++)
                            count += font->FindGlyph((ImWchar)(base + n)) ? 1 : 0;
                        if (count > 0 && ImGui::TreeNode((void*)(intptr_t)base, "U+%04X..U+%04X (%d %s)", base, base+255, count, count > 1 ? "glyphs" : "glyph"))
                        {
                            float cell_spacing = style.ItemSpacing.y;
                            ImVec2 cell_size(font->FontSize * 1, font->FontSize * 1);
                            ImVec2 base_pos = ImGui::GetCursorScreenPos();
                            ImDrawList* draw_list = ImGui::GetWindowDrawList();
                            for (int n = 0; n < 256; n++)
                            {
                                ImVec2 cell_p1(base_pos.x + (n % 16) * (cell_size.x + cell_spacing), base_pos.y + (n / 16) * (cell_size.y + cell_spacing));
                                ImVec2 cell_p2(cell_p1.x + cell_size.x, cell_p1.y + cell_size.y);
                                const ImFont::Glyph* glyph = font->FindGlyph((ImWchar)(base+n));;
                                draw_list->AddRect(cell_p1, cell_p2, glyph ? (((ImU32)(100)<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0)) : (((ImU32)(50)<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0)));
                                font->RenderChar(draw_list, cell_size.x, cell_p1, ImGui::GetColorU32(ImGuiCol_Text), (ImWchar)(base+n)); 
                                if (glyph && ImGui::IsMouseHoveringRect(cell_p1, cell_p2))
                                {
                                    ImGui::BeginTooltip();
                                    ImGui::Text("Codepoint: U+%04X", base+n);
                                    ImGui::Separator();
                                    ImGui::Text("XAdvance+1: %.1f", glyph->XAdvance);
                                    ImGui::Text("Pos: (%.2f,%.2f)->(%.2f,%.2f)", glyph->X0, glyph->Y0, glyph->X1, glyph->Y1);
                                    ImGui::Text("UV: (%.3f,%.3f)->(%.3f,%.3f)", glyph->U0, glyph->V0, glyph->U1, glyph->V1);
                                    ImGui::EndTooltip();
                                }
                            }
                            ImGui::Dummy(ImVec2((cell_size.x + cell_spacing) * 16, (cell_size.y + cell_spacing) * 16));
                            ImGui::TreePop();
                        }
                    }
                    font->FallbackGlyph = glyph_fallback;
                    ImGui::TreePop();
                }
                ImGui::TreePop();
            }
            ImGui::TreePop();
        }
        static float window_scale = 1.0f;
        ImGui::DragFloat("this window scale", &window_scale, 0.005f, 0.3f, 2.0f, "%.1f");              
        ImGui::DragFloat("global scale", &ImGui::GetIO().FontGlobalScale, 0.005f, 0.3f, 2.0f, "%.1f"); 
        ImGui::PopItemWidth();
        ImGui::SetWindowFontScale(window_scale);
        ImGui::TreePop();
    }

    ImGui::PopItemWidth();
}


static void ShowExampleAppMainMenuBar()
{
    if (ImGui::BeginMainMenuBar())
    {
        if (ImGui::BeginMenu("File"))
        {
            ShowExampleMenuFile();
            ImGui::EndMenu();
        }
        if (ImGui::BeginMenu("Edit"))
        {
            if (ImGui::MenuItem("Undo", "CTRL+Z")) {}
            if (ImGui::MenuItem("Redo", "CTRL+Y", false, false)) {}  
            ImGui::Separator();
            if (ImGui::MenuItem("Cut", "CTRL+X")) {}
            if (ImGui::MenuItem("Copy", "CTRL+C")) {}
            if (ImGui::MenuItem("Paste", "CTRL+V")) {}
            ImGui::EndMenu();
        }
        ImGui::EndMainMenuBar();
    }
}

static void ShowExampleMenuFile()
{
    ImGui::MenuItem("(dummy menu)", 0, false, false);
    if (ImGui::MenuItem("New")) {}
    if (ImGui::MenuItem("Open", "Ctrl+O")) {}
    if (ImGui::BeginMenu("Open Recent"))
    {
        ImGui::MenuItem("fish_hat.c");
        ImGui::MenuItem("fish_hat.inl");
        ImGui::MenuItem("fish_hat.h");
        if (ImGui::BeginMenu("More.."))
        {
            ImGui::MenuItem("Hello");
            ImGui::MenuItem("Sailor");
            if (ImGui::BeginMenu("Recurse.."))
            {
                ShowExampleMenuFile();
                ImGui::EndMenu();
            }
            ImGui::EndMenu();
        }
        ImGui::EndMenu();
    }
    if (ImGui::MenuItem("Save", "Ctrl+S")) {}
    if (ImGui::MenuItem("Save As..")) {}
    ImGui::Separator();
    if (ImGui::BeginMenu("Options"))
    {
        static bool enabled = true;
        ImGui::MenuItem("Enabled", "", &enabled);
        ImGui::BeginChild("child", ImVec2(0, 60), true);
        for (int i = 0; i < 10; i++)
            ImGui::Text("Scrolling Text %d", i);
        ImGui::EndChild();
        static float f = 0.5f;
        static int n = 0;
        ImGui::SliderFloat("Value", &f, 0.0f, 1.0f);
        ImGui::InputFloat("Input", &f, 0.1f);
        ImGui::Combo("Combo", &n, "Yes\0No\0Maybe\0\0");
        ImGui::EndMenu();
    }
    if (ImGui::BeginMenu("Colors"))
    {
        for (int i = 0; i < ImGuiCol_COUNT; i++)
            ImGui::MenuItem(ImGui::GetStyleColName((ImGuiCol)i));
        ImGui::EndMenu();
    }
    if (ImGui::BeginMenu("Disabled", false)) 
    {
        (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp", (unsigned)(1890)), 0) );
    }
    if (ImGui::MenuItem("Checked", 0, true)) {}
    if (ImGui::MenuItem("Quit", "Alt+F4")) {}
}


static void ShowExampleAppAutoResize(bool* p_open)
{
    if (!ImGui::Begin("Example: Auto-resizing window", p_open, ImGuiWindowFlags_AlwaysAutoResize))
    {
        ImGui::End();
        return;
    }

    static int lines = 10;
    ImGui::Text("Window will resize every-frame to the size of its content.\nNote that you probably don't want to query the window size to\noutput your content because that would create a feedback loop.");
    ImGui::SliderInt("Number of lines", &lines, 1, 20);
    for (int i = 0; i < lines; i++)
        ImGui::Text("%*sThis is line %d", i*4, "", i); 
    ImGui::End();
}


static void ShowExampleAppConstrainedResize(bool* p_open)
{
    struct CustomConstraints 
    {
        static void Square(ImGuiSizeConstraintCallbackData* data) { data->DesiredSize = ImVec2((((data->DesiredSize.x) >= (data->DesiredSize.y)) ? (data->DesiredSize.x) : (data->DesiredSize.y)), (((data->DesiredSize.x) >= (data->DesiredSize.y)) ? (data->DesiredSize.x) : (data->DesiredSize.y))); }
        static void Step(ImGuiSizeConstraintCallbackData* data)   { float step = (float)(int)(intptr_t)data->UserData; data->DesiredSize = ImVec2((int)(data->DesiredSize.x / step + 0.5f) * step, (int)(data->DesiredSize.y / step + 0.5f) * step); }
    };

    static int type = 0;
    if (type == 0) ImGui::SetNextWindowSizeConstraints(ImVec2(-1, 0),    ImVec2(-1, 3.402823466e+38F));      
    if (type == 1) ImGui::SetNextWindowSizeConstraints(ImVec2(0, -1),    ImVec2(3.402823466e+38F, -1));      
    if (type == 2) ImGui::SetNextWindowSizeConstraints(ImVec2(100, 100), ImVec2(3.402823466e+38F, 3.402823466e+38F)); 
    if (type == 3) ImGui::SetNextWindowSizeConstraints(ImVec2(300, 0),   ImVec2(400, 3.402823466e+38F));     
    if (type == 4) ImGui::SetNextWindowSizeConstraints(ImVec2(0, 0),     ImVec2(3.402823466e+38F, 3.402823466e+38F), CustomConstraints::Square);          
    if (type == 5) ImGui::SetNextWindowSizeConstraints(ImVec2(0, 0),     ImVec2(3.402823466e+38F, 3.402823466e+38F), CustomConstraints::Step, (void*)100);

    if (ImGui::Begin("Example: Constrained Resize", p_open))
    {
        const char* desc[] = 
        {
            "Resize vertical only",
            "Resize horizontal only",
            "Width > 100, Height > 100",
            "Width 300-400",
            "Custom: Always Square",
            "Custom: Fixed Steps (100)",
        };
        ImGui::Combo("Constraint", &type, desc, ((int)(sizeof(desc)/sizeof(*desc)))); 
        if (ImGui::Button("200x200")) ImGui::SetWindowSize(ImVec2(200,200)); ImGui::SameLine();
        if (ImGui::Button("500x500")) ImGui::SetWindowSize(ImVec2(500,500)); ImGui::SameLine();
        if (ImGui::Button("800x200")) ImGui::SetWindowSize(ImVec2(800,200));
        for (int i = 0; i < 10; i++) 
            ImGui::Text("Hello, sailor! Making this line long enough for the example.");
    }
    ImGui::End();
}


static void ShowExampleAppFixedOverlay(bool* p_open)
{
    ImGui::SetNextWindowPos(ImVec2(10,10));
    if (!ImGui::Begin("Example: Fixed Overlay", p_open, ImVec2(0,0), 0.3f, ImGuiWindowFlags_NoTitleBar|ImGuiWindowFlags_NoResize|ImGuiWindowFlags_NoMove|ImGuiWindowFlags_NoSavedSettings))
    {
        ImGui::End();
        return;
    }
    ImGui::Text("Simple overlay\non the top-left side of the screen.");
    ImGui::Separator();
    ImGui::Text("Mouse Position: (%.1f,%.1f)", ImGui::GetIO().MousePos.x, ImGui::GetIO().MousePos.y);
    ImGui::End();
}



static void ShowExampleAppManipulatingWindowTitle(bool*)
{
    
    

    
    ImGui::SetNextWindowPos(ImVec2(100,100), ImGuiSetCond_FirstUseEver);
    ImGui::Begin("Same title as another window##1");
    ImGui::Text("This is window 1.\nMy title is the same as window 2, but my identifier is unique.");
    ImGui::End();

    ImGui::SetNextWindowPos(ImVec2(100,200), ImGuiSetCond_FirstUseEver);
    ImGui::Begin("Same title as another window##2");
    ImGui::Text("This is window 2.\nMy title is the same as window 1, but my identifier is unique.");
    ImGui::End();

    
    char buf[128];
    sprintf(buf, "Animated title %c %d###AnimatedTitle", "|/-\\"[(int)(ImGui::GetTime()/0.25f)&3], rand());
    ImGui::SetNextWindowPos(ImVec2(100,300), ImGuiSetCond_FirstUseEver);
    ImGui::Begin(buf);
    ImGui::Text("This window has a changing title.");
    ImGui::End();
}


static void ShowExampleAppCustomRendering(bool* p_open)
{
    ImGui::SetNextWindowSize(ImVec2(350,560), ImGuiSetCond_FirstUseEver);
    if (!ImGui::Begin("Example: Custom rendering", p_open))
    {
        ImGui::End();
        return;
    }

    
    
    
    
    ImDrawList* draw_list = ImGui::GetWindowDrawList();

    
    ImGui::Text("Primitives");
    static float sz = 36.0f;
    static ImVec4 col = ImVec4(1.0f,1.0f,0.4f,1.0f);
    ImGui::DragFloat("Size", &sz, 0.2f, 2.0f, 72.0f, "%.0f");
    ImGui::ColorEdit3("Color", &col.x);
    {
        const ImVec2 p = ImGui::GetCursorScreenPos();
        const ImU32 col32 = ImColor(col);
        float x = p.x + 4.0f, y = p.y + 4.0f, spacing = 8.0f;
        for (int n = 0; n < 2; n++)
        {
            float thickness = (n == 0) ? 1.0f : 4.0f;
            draw_list->AddCircle(ImVec2(x+sz*0.5f, y+sz*0.5f), sz*0.5f, col32, 20, thickness); x += sz+spacing;
            draw_list->AddRect(ImVec2(x, y), ImVec2(x+sz, y+sz), col32, 0.0f, ~0, thickness); x += sz+spacing;
            draw_list->AddRect(ImVec2(x, y), ImVec2(x+sz, y+sz), col32, 10.0f, ~0, thickness); x += sz+spacing;
            draw_list->AddTriangle(ImVec2(x+sz*0.5f, y), ImVec2(x+sz,y+sz-0.5f), ImVec2(x,y+sz-0.5f), col32, thickness); x += sz+spacing;
            draw_list->AddLine(ImVec2(x, y), ImVec2(x+sz, y   ), col32, thickness); x += sz+spacing;
            draw_list->AddLine(ImVec2(x, y), ImVec2(x+sz, y+sz), col32, thickness); x += sz+spacing;
            draw_list->AddLine(ImVec2(x, y), ImVec2(x,    y+sz), col32, thickness); x += spacing;
            draw_list->AddBezierCurve(ImVec2(x, y), ImVec2(x+sz*1.3f,y+sz*0.3f), ImVec2(x+sz-sz*1.3f,y+sz-sz*0.3f), ImVec2(x+sz, y+sz), col32, thickness);
            x = p.x + 4;
            y += sz+spacing;
        }
        draw_list->AddCircleFilled(ImVec2(x+sz*0.5f, y+sz*0.5f), sz*0.5f, col32, 32); x += sz+spacing;
        draw_list->AddRectFilled(ImVec2(x, y), ImVec2(x+sz, y+sz), col32); x += sz+spacing;
        draw_list->AddRectFilled(ImVec2(x, y), ImVec2(x+sz, y+sz), col32, 10.0f); x += sz+spacing;
        draw_list->AddTriangleFilled(ImVec2(x+sz*0.5f, y), ImVec2(x+sz,y+sz-0.5f), ImVec2(x,y+sz-0.5f), col32); x += sz+spacing;
        draw_list->AddRectFilledMultiColor(ImVec2(x, y), ImVec2(x+sz, y+sz), ImColor(0,0,0), ImColor(255,0,0), ImColor(255,255,0), ImColor(0,255,0));
        ImGui::Dummy(ImVec2((sz+spacing)*8, (sz+spacing)*3));
    }
    ImGui::Separator();
    {
        static ImVector<ImVec2> points;
        static bool adding_line = false;
        ImGui::Text("Canvas example");
        if (ImGui::Button("Clear")) points.clear();
        if (points.Size >= 2) { ImGui::SameLine(); if (ImGui::Button("Undo")) { points.pop_back(); points.pop_back(); } }
        ImGui::Text("Left-click and drag to add lines,\nRight-click to undo");

        
        
        
        ImVec2 canvas_pos = ImGui::GetCursorScreenPos();            
        ImVec2 canvas_size = ImGui::GetContentRegionAvail();        
        if (canvas_size.x < 50.0f) canvas_size.x = 50.0f;
        if (canvas_size.y < 50.0f) canvas_size.y = 50.0f;
        draw_list->AddRectFilledMultiColor(canvas_pos, ImVec2(canvas_pos.x + canvas_size.x, canvas_pos.y + canvas_size.y), ImColor(50,50,50), ImColor(50,50,60), ImColor(60,60,70), ImColor(50,50,60));
        draw_list->AddRect(canvas_pos, ImVec2(canvas_pos.x + canvas_size.x, canvas_pos.y + canvas_size.y), ImColor(255,255,255));

        bool adding_preview = false;
        ImGui::InvisibleButton("canvas", canvas_size);
        ImVec2 mouse_pos_in_canvas = ImVec2(ImGui::GetIO().MousePos.x - canvas_pos.x, ImGui::GetIO().MousePos.y - canvas_pos.y);
        if (adding_line)
        {
            adding_preview = true;
            points.push_back(mouse_pos_in_canvas);
            if (!ImGui::GetIO().MouseDown[0])
                adding_line = adding_preview = false;
        }
        if (ImGui::IsItemHovered())
        {
            if (!adding_line && ImGui::IsMouseClicked(0))
            {
                points.push_back(mouse_pos_in_canvas);
                adding_line = true;
            }
            if (ImGui::IsMouseClicked(1) && !points.empty())
            {
                adding_line = adding_preview = false;
                points.pop_back();
                points.pop_back();
            }
        }
        draw_list->PushClipRect(canvas_pos, ImVec2(canvas_pos.x+canvas_size.x, canvas_pos.y+canvas_size.y));      
        for (int i = 0; i < points.Size - 1; i += 2)
            draw_list->AddLine(ImVec2(canvas_pos.x + points[i].x, canvas_pos.y + points[i].y), ImVec2(canvas_pos.x + points[i+1].x, canvas_pos.y + points[i+1].y), (((ImU32)(255)<<24) | ((ImU32)(0)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0)), 2.0f);
        draw_list->PopClipRect();
        if (adding_preview)
            points.pop_back();
    }
    ImGui::End();
}



struct ExampleAppConsole
{
    char                  InputBuf[256];
    ImVector<char*>       Items;
    bool                  ScrollToBottom;
    ImVector<char*>       History;
    int                   HistoryPos;    
    ImVector<const char*> Commands;

    ExampleAppConsole()
    {
        ClearLog();
        memset(InputBuf, 0, sizeof(InputBuf));
        HistoryPos = -1;
        Commands.push_back("HELP");
        Commands.push_back("HISTORY");
        Commands.push_back("CLEAR");
        Commands.push_back("CLASSIFY");  
        AddLog("Welcome to ImGui!");
    }
    ~ExampleAppConsole()
    {
        ClearLog();
        for (int i = 0; i < History.Size; i++)
            free(History[i]);
    }

    
    static int   Stricmp(const char* str1, const char* str2)         { int d; while ((d = toupper(*str2) - toupper(*str1)) == 0 && *str1) { str1++; str2++; } return d; }
    static int   Strnicmp(const char* str1, const char* str2, int n) { int d = 0; while (n > 0 && (d = toupper(*str2) - toupper(*str1)) == 0 && *str1) { str1++; str2++; n--; } return d; }
    static char* Strdup(const char *str)                             { size_t len = strlen(str) + 1; void* buff = malloc(len); return (char*)memcpy(buff, (const void*)str, len); }

    void    ClearLog()
    {
        for (int i = 0; i < Items.Size; i++)
            free(Items[i]);
        Items.clear();
        ScrollToBottom = true;
    }

    void    AddLog(const char* fmt, ...) 
    {
        char buf[1024];
        va_list args;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        vsnprintf(buf, ((int)(sizeof(buf)/sizeof(*buf))), fmt, args);
        buf[((int)(sizeof(buf)/sizeof(*buf)))-1] = 0;
        ((void)(args = (va_list)0));
        Items.push_back(Strdup(buf));
        ScrollToBottom = true;
    }

    void    Draw(const char* title, bool* p_open)
    {
        ImGui::SetNextWindowSize(ImVec2(520,600), ImGuiSetCond_FirstUseEver);
        if (!ImGui::Begin(title, p_open))
        {
            ImGui::End();
            return;
        }

        ImGui::TextWrapped("This example implements a console with basic coloring, completion and history. A more elaborate implementation may want to store entries along with extra data such as timestamp, emitter, etc.");
        ImGui::TextWrapped("Enter 'HELP' for help, press TAB to use text completion.");

        

        if (ImGui::SmallButton("Add Dummy Text")) { AddLog("%d some text", Items.Size); AddLog("some more text"); AddLog("display very important message here!"); } ImGui::SameLine();
        if (ImGui::SmallButton("Add Dummy Error")) AddLog("[error] something went wrong"); ImGui::SameLine();
        if (ImGui::SmallButton("Clear")) ClearLog(); ImGui::SameLine();
        if (ImGui::SmallButton("Scroll to bottom")) ScrollToBottom = true;
        

        ImGui::Separator();

        ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(0,0));
        static ImGuiTextFilter filter;
        filter.Draw("Filter (\"incl,-excl\") (\"error\")", 180);
        ImGui::PopStyleVar();
        ImGui::Separator();

        ImGui::BeginChild("ScrollingRegion", ImVec2(0,-ImGui::GetItemsLineHeightWithSpacing()), false, ImGuiWindowFlags_HorizontalScrollbar);
        if (ImGui::BeginPopupContextWindow())
        {
            if (ImGui::Selectable("Clear")) ClearLog();
            ImGui::EndPopup();
        }

        
        
        
        
        
        
        
        
        
        
        
        ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(4,1)); 
        for (int i = 0; i < Items.Size; i++)
        {
            const char* item = Items[i];
            if (!filter.PassFilter(item))
                continue;
            ImVec4 col = ImVec4(1.0f,1.0f,1.0f,1.0f); 
            if (strstr(item, "[error]")) col = ImColor(1.0f,0.4f,0.4f,1.0f);
            else if (strncmp(item, "# ", 2) == 0) col = ImColor(1.0f,0.78f,0.58f,1.0f);
            ImGui::PushStyleColor(ImGuiCol_Text, col);
            ImGui::TextUnformatted(item);
            ImGui::PopStyleColor();
        }
        if (ScrollToBottom)
            ImGui::SetScrollHere();
        ScrollToBottom = false;
        ImGui::PopStyleVar();
        ImGui::EndChild();
        ImGui::Separator();

        
        if (ImGui::InputText("Input", InputBuf, ((int)(sizeof(InputBuf)/sizeof(*InputBuf))), ImGuiInputTextFlags_EnterReturnsTrue|ImGuiInputTextFlags_CallbackCompletion|ImGuiInputTextFlags_CallbackHistory, &TextEditCallbackStub, (void*)this))
        {
            char* input_end = InputBuf+strlen(InputBuf);
            while (input_end > InputBuf && input_end[-1] == ' ') input_end--; *input_end = 0;
            if (InputBuf[0])
                ExecCommand(InputBuf);
            strcpy(InputBuf, "");
        }

        
        if (ImGui::IsItemHovered() || (ImGui::IsRootWindowOrAnyChildFocused() && !ImGui::IsAnyItemActive() && !ImGui::IsMouseClicked(0)))
            ImGui::SetKeyboardFocusHere(-1); 

        ImGui::End();
    }

    void    ExecCommand(const char* command_line)
    {
        AddLog("# %s\n", command_line);

        
        HistoryPos = -1;
        for (int i = History.Size-1; i >= 0; i--)
            if (Stricmp(History[i], command_line) == 0)
            {
                free(History[i]);
                History.erase(History.begin() + i);
                break;
            }
        History.push_back(Strdup(command_line));

        
        if (Stricmp(command_line, "CLEAR") == 0)
        {
            ClearLog();
        }
        else if (Stricmp(command_line, "HELP") == 0)
        {
            AddLog("Commands:");
            for (int i = 0; i < Commands.Size; i++)
                AddLog("- %s", Commands[i]);
        }
        else if (Stricmp(command_line, "HISTORY") == 0)
        {
            for (int i = History.Size >= 10 ? History.Size - 10 : 0; i < History.Size; i++)
                AddLog("%3d: %s\n", i, History[i]);
        }
        else
        {
            AddLog("Unknown command: '%s'\n", command_line);
        }
    }

    static int TextEditCallbackStub(ImGuiTextEditCallbackData* data) 
    {
        ExampleAppConsole* console = (ExampleAppConsole*)data->UserData;
        return console->TextEditCallback(data);
    }

    int     TextEditCallback(ImGuiTextEditCallbackData* data)
    {
        
        switch (data->EventFlag)
        {
        case ImGuiInputTextFlags_CallbackCompletion:
            {
                

                
                const char* word_end = data->Buf + data->CursorPos;
                const char* word_start = word_end;
                while (word_start > data->Buf)
                {
                    const char c = word_start[-1];
                    if (c == ' ' || c == '\t' || c == ',' || c == ';')
                        break;
                    word_start--;
                }

                
                ImVector<const char*> candidates;
                for (int i = 0; i < Commands.Size; i++)
                    if (Strnicmp(Commands[i], word_start, (int)(word_end-word_start)) == 0)
                        candidates.push_back(Commands[i]);

                if (candidates.Size == 0)
                {
                    
                    AddLog("No match for \"%.*s\"!\n", (int)(word_end-word_start), word_start);
                }
                else if (candidates.Size == 1)
                {
                    
                    data->DeleteChars((int)(word_start-data->Buf), (int)(word_end-word_start));
                    data->InsertChars(data->CursorPos, candidates[0]);
                    data->InsertChars(data->CursorPos, " ");
                }
                else
                {
                    
                    int match_len = (int)(word_end - word_start);
                    for (;;)
                    {
                        int c = 0;
                        bool all_candidates_matches = true;
                        for (int i = 0; i < candidates.Size && all_candidates_matches; i++)
                            if (i == 0)
                                c = toupper(candidates[i][match_len]);
                            else if (c == 0 || c != toupper(candidates[i][match_len]))
                                all_candidates_matches = false;
                        if (!all_candidates_matches)
                            break;
                        match_len++;
                    }

                    if (match_len > 0)
                    {
                        data->DeleteChars((int)(word_start - data->Buf), (int)(word_end-word_start));
                        data->InsertChars(data->CursorPos, candidates[0], candidates[0] + match_len);
                    }

                    
                    AddLog("Possible matches:\n");
                    for (int i = 0; i < candidates.Size; i++)
                        AddLog("- %s\n", candidates[i]);
                }

                break;
            }
        case ImGuiInputTextFlags_CallbackHistory:
            {
                
                const int prev_history_pos = HistoryPos;
                if (data->EventKey == ImGuiKey_UpArrow)
                {
                    if (HistoryPos == -1)
                        HistoryPos = History.Size - 1;
                    else if (HistoryPos > 0)
                        HistoryPos--;
                }
                else if (data->EventKey == ImGuiKey_DownArrow)
                {
                    if (HistoryPos != -1)
                        if (++HistoryPos >= History.Size)
                            HistoryPos = -1;
                }

                
                if (prev_history_pos != HistoryPos)
                {
                    data->CursorPos = data->SelectionStart = data->SelectionEnd = data->BufTextLen = (int)_snprintf(data->Buf, (size_t)data->BufSize, "%s", (HistoryPos >= 0) ? History[HistoryPos] : "");
                    data->BufDirty = true;
                }
            }
        }
        return 0;
    }
};

static void ShowExampleAppConsole(bool* p_open)
{
    static ExampleAppConsole console;
    console.Draw("Example: Console", p_open);
}





struct ExampleAppLog
{
    ImGuiTextBuffer     Buf;
    ImGuiTextFilter     Filter;
    ImVector<int>       LineOffsets;        
    bool                ScrollToBottom;

    void    Clear()     { Buf.clear(); LineOffsets.clear(); }

    void    AddLog(const char* fmt, ...) 
    {
        int old_size = Buf.size();
        va_list args;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        Buf.appendv(fmt, args);
        ((void)(args = (va_list)0));
        for (int new_size = Buf.size(); old_size < new_size; old_size++)
            if (Buf[old_size] == '\n')
                LineOffsets.push_back(old_size);
        ScrollToBottom = true;
    }

    void    Draw(const char* title, bool* p_open = 0)
    {
        ImGui::SetNextWindowSize(ImVec2(500,400), ImGuiSetCond_FirstUseEver);
        ImGui::Begin(title, p_open);
        if (ImGui::Button("Clear")) Clear();
        ImGui::SameLine();
        bool copy = ImGui::Button("Copy");
        ImGui::SameLine();
        Filter.Draw("Filter", -100.0f);
        ImGui::Separator();
        ImGui::BeginChild("scrolling", ImVec2(0,0), false, ImGuiWindowFlags_HorizontalScrollbar);
        if (copy) ImGui::LogToClipboard();

        if (Filter.IsActive())
        {
            const char* buf_begin = Buf.begin();
            const char* line = buf_begin;
            for (int line_no = 0; line != 0; line_no++)
            {
                const char* line_end = (line_no < LineOffsets.Size) ? buf_begin + LineOffsets[line_no] : 0;
                if (Filter.PassFilter(line, line_end))
                    ImGui::TextUnformatted(line, line_end);
                line = line_end && line_end[1] ? line_end + 1 : 0;
            }
        }
        else
        {
            ImGui::TextUnformatted(Buf.begin());
        }

        if (ScrollToBottom)
            ImGui::SetScrollHere(1.0f);
        ScrollToBottom = false;
        ImGui::EndChild();
        ImGui::End();
    }
};


static void ShowExampleAppLog(bool* p_open)
{
    static ExampleAppLog log;

    
    static float last_time = -1.0f;
    float time = ImGui::GetTime();
    if (time - last_time >= 0.3f)
    {
        const char* random_words[] = { "system", "info", "warning", "error", "fatal", "notice", "log" };
        log.AddLog("[%s] Hello, time is %.1f, rand() %d\n", random_words[rand() % ((int)(sizeof(random_words)/sizeof(*random_words)))], time, (int)rand());
        last_time = time;
    }

    log.Draw("Example: Log", p_open);
}


static void ShowExampleAppLayout(bool* p_open)
{
    ImGui::SetNextWindowSize(ImVec2(500, 440), ImGuiSetCond_FirstUseEver);
    if (ImGui::Begin("Example: Layout", p_open, ImGuiWindowFlags_MenuBar))
    {
        if (ImGui::BeginMenuBar())
        {
            if (ImGui::BeginMenu("File"))
            {
                if (ImGui::MenuItem("Close")) *p_open = false;
                ImGui::EndMenu();
            }
            ImGui::EndMenuBar();
        }

        
        static int selected = 0;
        ImGui::BeginChild("left pane", ImVec2(150, 0), true);
        for (int i = 0; i < 100; i++)
        {
            char label[128];
            sprintf(label, "MyObject %d", i);
            if (ImGui::Selectable(label, selected == i))
                selected = i;
        }
        ImGui::EndChild();
        ImGui::SameLine();

        
        ImGui::BeginGroup();
            ImGui::BeginChild("item view", ImVec2(0, -ImGui::GetItemsLineHeightWithSpacing())); 
                ImGui::Text("MyObject: %d", selected);
                ImGui::Separator();
                ImGui::TextWrapped("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ");
            ImGui::EndChild();
            ImGui::BeginChild("buttons");
                if (ImGui::Button("Revert")) {}
                ImGui::SameLine();
                if (ImGui::Button("Save")) {}
            ImGui::EndChild();
        ImGui::EndGroup();
    }
    ImGui::End();
}


static void ShowExampleAppPropertyEditor(bool* p_open)
{
    ImGui::SetNextWindowSize(ImVec2(430,450), ImGuiSetCond_FirstUseEver);
    if (!ImGui::Begin("Example: Property editor", p_open))
    {
        ImGui::End();
        return;
    }

    ShowHelpMarker("This example shows how you may implement a property editor using two columns.\nAll objects/fields data are dummies here.\nRemember that in many simple cases, you can use ImGui::SameLine(xxx) to position\nyour cursor horizontally instead of using the Columns() API.");

    ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(2,2));
    ImGui::Columns(2);
    ImGui::Separator();

    struct funcs
    {
        static void ShowDummyObject(const char* prefix, int uid)
        {
            ImGui::PushID(uid);                      
            ImGui::AlignFirstTextHeightToWidgets();  
            bool node_open = ImGui::TreeNode("Object", "%s_%u", prefix, uid);
            ImGui::NextColumn();
            ImGui::AlignFirstTextHeightToWidgets();
            ImGui::Text("my sailor is rich");
            ImGui::NextColumn();
            if (node_open)
            {
                static float dummy_members[8] = { 0.0f,0.0f,1.0f,3.1416f,100.0f,999.0f };
                for (int i = 0; i < 8; i++)
                {
                    ImGui::PushID(i); 
                    if (i < 2)
                    {
                        ShowDummyObject("Child", 424242);
                    }
                    else
                    {
                        ImGui::AlignFirstTextHeightToWidgets();
                        
                        
                        char label[32];
                        sprintf(label, "Field_%d", i);
                        ImGui::Bullet();
                        ImGui::Selectable(label);
                        ImGui::NextColumn();
                        ImGui::PushItemWidth(-1);
                        if (i >= 5)
                            ImGui::InputFloat("##value", &dummy_members[i], 1.0f);
                        else
                            ImGui::DragFloat("##value", &dummy_members[i], 0.01f);
                        ImGui::PopItemWidth();
                        ImGui::NextColumn();
                    }
                    ImGui::PopID();
                }
                ImGui::TreePop();
            }
            ImGui::PopID();
        }
    };

    
    for (int obj_i = 0; obj_i < 3; obj_i++)
        funcs::ShowDummyObject("Object", obj_i);

    ImGui::Columns(1);
    ImGui::Separator();
    ImGui::PopStyleVar();
    ImGui::End();
}


static void ShowExampleAppLongText(bool* p_open)
{
    ImGui::SetNextWindowSize(ImVec2(520,600), ImGuiSetCond_FirstUseEver);
    if (!ImGui::Begin("Example: Long text display", p_open))
    {
        ImGui::End();
        return;
    }

    static int test_type = 0;
    static ImGuiTextBuffer log;
    static int lines = 0;
    ImGui::Text("Printing unusually long amount of text.");
    ImGui::Combo("Test type", &test_type, "Single call to TextUnformatted()\0Multiple calls to Text(), clipped manually\0Multiple calls to Text(), not clipped\0");
    ImGui::Text("Buffer contents: %d lines, %d bytes", lines, log.size());
    if (ImGui::Button("Clear")) { log.clear(); lines = 0; }
    ImGui::SameLine();
    if (ImGui::Button("Add 1000 lines"))
    {
        for (int i = 0; i < 1000; i++)
            log.append("%i The quick brown fox jumps over the lazy dog\n", lines+i);
        lines += 1000;
    }
    ImGui::BeginChild("Log");
    switch (test_type)
    {
    case 0:
        
        ImGui::TextUnformatted(log.begin(), log.end());
        break;
    case 1:
        {
            
            ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0,0));
            ImGuiListClipper clipper(lines);
            while (clipper.Step())
                for (int i = clipper.DisplayStart; i < clipper.DisplayEnd; i++)
                    ImGui::Text("%i The quick brown fox jumps over the lazy dog", i);
            ImGui::PopStyleVar();
            break;
        }
    case 2:
        
        ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0,0));
        for (int i = 0; i < lines; i++)
            ImGui::Text("%i The quick brown fox jumps over the lazy dog", i);
        ImGui::PopStyleVar();
        break;
    }
    ImGui::EndChild();
    ImGui::End();
}








#line 2642 "c:\\biblioteki\\imgui-sfml\\imgui_demo.cpp"
