#line 1 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"







































































































































































































































































































































































































































































































































































































































#line 617 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"

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





#line 619 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"


#line 1 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"







#pragma once





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
#line 15 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"
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




#line 16 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"


#pragma warning (push)
#pragma warning (disable: 4251) 
#line 21 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"












struct ImRect;
struct ImGuiColMod;
struct ImGuiStyleMod;
struct ImGuiGroupData;
struct ImGuiSimpleColumns;
struct ImGuiDrawContext;
struct ImGuiTextEditState;
struct ImGuiIniData;
struct ImGuiMouseCursorData;
struct ImGuiPopupRef;
struct ImGuiWindow;

typedef int ImGuiLayoutType;      
typedef int ImGuiButtonFlags;     
typedef int ImGuiTreeNodeFlags;   
typedef int ImGuiSliderFlags;     





namespace ImGuiStb
{






#line 1 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"




























































































































































































































































































#line 286 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"


#line 289 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"





#line 295 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"

typedef struct
{
   
   int  where;
   short           insert_length;
   short           delete_length;
   short           char_storage;
} StbUndoRecord;

typedef struct
{
   
   StbUndoRecord          undo_rec [99];
   ImWchar  undo_char[999];
   short undo_point, redo_point;
   short undo_char_point, redo_char_point;
} StbUndoState;

typedef struct
{
   
   
   
   

   int cursor;
   

   int select_start;          
   int select_end;
   
   
   
   

   unsigned char insert_mode;
   
   

   
   
   
   
   unsigned char cursor_at_end_of_line; 
   unsigned char initialized;
   unsigned char has_preferred_x;
   unsigned char single_line;
   unsigned char padding1, padding2, padding3;
   float preferred_x; 
   StbUndoState undostate;
} STB_TexteditState;










typedef struct
{
   float x0,x1;             
   float baseline_y_delta;  
   float ymin,ymax;         
   int num_chars;
} StbTexteditRow;
#line 365 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"






























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 63 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"

} 






extern  ImGuiContext* GImGui;  
#line 73 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"










 int           ImTextStrToUtf8(char* buf, int buf_size, const ImWchar* in_text, const ImWchar* in_text_end);      
 int           ImTextCharFromUtf8(unsigned int* out_char, const char* in_text, const char* in_text_end);          
 int           ImTextStrFromUtf8(ImWchar* buf, int buf_size, const char* in_text, const char* in_text_end, const char** in_remaining = 0);   
 int           ImTextCountCharsFromUtf8(const char* in_text, const char* in_text_end);                            
 int           ImTextCountUtf8BytesFromStr(const ImWchar* in_text, const ImWchar* in_text_end);                   


 ImU32         ImHash(const void* data, int data_size, ImU32 seed = 0);    
 void*         ImFileLoadToMemory(const char* filename, const char* file_open_mode, int* out_file_size = 0, int padding_bytes = 0);
 FILE*         ImFileOpen(const char* filename, const char* file_open_mode);         
 bool          ImIsPointInTriangle(const ImVec2& p, const ImVec2& a, const ImVec2& b, const ImVec2& c);
static inline bool      ImCharIsSpace(int c)            { return c == ' ' || c == '\t' || c == 0x3000; }
static inline int       ImUpperPowerOfTwo(int v)        { v--; v |= v >> 1; v |= v >> 2; v |= v >> 4; v |= v >> 8; v |= v >> 16; v++; return v; }


 int           ImStricmp(const char* str1, const char* str2);
 int           ImStrnicmp(const char* str1, const char* str2, int count);
 char*         ImStrdup(const char* str);
 int           ImStrlenW(const ImWchar* str);
 const ImWchar*ImStrbolW(const ImWchar* buf_mid_line, const ImWchar* buf_begin); 
 const char*   ImStristr(const char* haystack, const char* haystack_end, const char* needle, const char* needle_end);
 int           ImFormatString(char* buf, int buf_size, const char* fmt, ...) ;
 int           ImFormatStringV(char* buf, int buf_size, const char* fmt, va_list args);




static inline ImVec2 operator*(const ImVec2& lhs, const float rhs)              { return ImVec2(lhs.x*rhs, lhs.y*rhs); }
static inline ImVec2 operator/(const ImVec2& lhs, const float rhs)              { return ImVec2(lhs.x/rhs, lhs.y/rhs); }
static inline ImVec2 operator+(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x+rhs.x, lhs.y+rhs.y); }
static inline ImVec2 operator-(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x-rhs.x, lhs.y-rhs.y); }
static inline ImVec2 operator*(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x*rhs.x, lhs.y*rhs.y); }
static inline ImVec2 operator/(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x/rhs.x, lhs.y/rhs.y); }
static inline ImVec2& operator+=(ImVec2& lhs, const ImVec2& rhs)                { lhs.x += rhs.x; lhs.y += rhs.y; return lhs; }
static inline ImVec2& operator-=(ImVec2& lhs, const ImVec2& rhs)                { lhs.x -= rhs.x; lhs.y -= rhs.y; return lhs; }
static inline ImVec2& operator*=(ImVec2& lhs, const float rhs)                  { lhs.x *= rhs; lhs.y *= rhs; return lhs; }
static inline ImVec2& operator/=(ImVec2& lhs, const float rhs)                  { lhs.x /= rhs; lhs.y /= rhs; return lhs; }
static inline ImVec4 operator-(const ImVec4& lhs, const ImVec4& rhs)            { return ImVec4(lhs.x-rhs.x, lhs.y-rhs.y, lhs.z-rhs.z, lhs.w-rhs.w); }
#line 122 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"

static inline int    ImMin(int lhs, int rhs)                                    { return lhs < rhs ? lhs : rhs; }
static inline int    ImMax(int lhs, int rhs)                                    { return lhs >= rhs ? lhs : rhs; }
static inline float  ImMin(float lhs, float rhs)                                { return lhs < rhs ? lhs : rhs; }
static inline float  ImMax(float lhs, float rhs)                                { return lhs >= rhs ? lhs : rhs; }
static inline ImVec2 ImMin(const ImVec2& lhs, const ImVec2& rhs)                { return ImVec2(ImMin(lhs.x,rhs.x), ImMin(lhs.y,rhs.y)); }
static inline ImVec2 ImMax(const ImVec2& lhs, const ImVec2& rhs)                { return ImVec2(ImMax(lhs.x,rhs.x), ImMax(lhs.y,rhs.y)); }
static inline int    ImClamp(int v, int mn, int mx)                             { return (v < mn) ? mn : (v > mx) ? mx : v; }
static inline float  ImClamp(float v, float mn, float mx)                       { return (v < mn) ? mn : (v > mx) ? mx : v; }
static inline ImVec2 ImClamp(const ImVec2& f, const ImVec2& mn, ImVec2 mx)      { return ImVec2(ImClamp(f.x,mn.x,mx.x), ImClamp(f.y,mn.y,mx.y)); }
static inline float  ImSaturate(float f)                                        { return (f < 0.0f) ? 0.0f : (f > 1.0f) ? 1.0f : f; }
static inline float  ImLerp(float a, float b, float t)                          { return a + (b - a) * t; }
static inline ImVec2 ImLerp(const ImVec2& a, const ImVec2& b, const ImVec2& t)  { return ImVec2(a.x + (b.x - a.x) * t.x, a.y + (b.y - a.y) * t.y); }
static inline float  ImLengthSqr(const ImVec2& lhs)                             { return lhs.x*lhs.x + lhs.y*lhs.y; }
static inline float  ImLengthSqr(const ImVec4& lhs)                             { return lhs.x*lhs.x + lhs.y*lhs.y + lhs.z*lhs.z + lhs.w*lhs.w; }
static inline float  ImInvLength(const ImVec2& lhs, float fail_value)           { float d = lhs.x*lhs.x + lhs.y*lhs.y; if (d > 0.0f) return 1.0f / sqrtf(d); return fail_value; }
static inline float  ImFloor(float f)                                           { return (float)(int)f; }
static inline ImVec2 ImFloor(ImVec2 v)                                          { return ImVec2((float)(int)v.x, (float)(int)v.y); }




struct ImPlacementNewDummy {};
inline void* operator new(size_t, ImPlacementNewDummy, void* ptr) { return ptr; }
inline void operator delete(void*, ImPlacementNewDummy, void*) {}

#line 149 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"





enum ImGuiButtonFlags_
{
    ImGuiButtonFlags_Repeat                 = 1 << 0,   
    ImGuiButtonFlags_PressedOnClickRelease  = 1 << 1,   
    ImGuiButtonFlags_PressedOnClick         = 1 << 2,   
    ImGuiButtonFlags_PressedOnRelease       = 1 << 3,   
    ImGuiButtonFlags_PressedOnDoubleClick   = 1 << 4,   
    ImGuiButtonFlags_FlattenChilds          = 1 << 5,   
    ImGuiButtonFlags_DontClosePopups        = 1 << 6,   
    ImGuiButtonFlags_Disabled               = 1 << 7,   
    ImGuiButtonFlags_AlignTextBaseLine      = 1 << 8,   
    ImGuiButtonFlags_NoKeyModifiers         = 1 << 9,   
    ImGuiButtonFlags_AllowOverlapMode       = 1 << 10   
};

enum ImGuiSliderFlags_
{
    ImGuiSliderFlags_Vertical               = 1 << 0
};

enum ImGuiSelectableFlagsPrivate_
{
    
    ImGuiSelectableFlags_Menu               = 1 << 3,
    ImGuiSelectableFlags_MenuItem           = 1 << 4,
    ImGuiSelectableFlags_Disabled           = 1 << 5,
    ImGuiSelectableFlags_DrawFillAvailWidth = 1 << 6
};


enum ImGuiLayoutType_
{
    ImGuiLayoutType_Vertical,
    ImGuiLayoutType_Horizontal
};

enum ImGuiPlotType
{
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram
};

enum ImGuiDataType
{
    ImGuiDataType_Int,
    ImGuiDataType_Float,
    ImGuiDataType_Float2,
};

enum ImGuiCorner
{
    ImGuiCorner_TopLeft     = 1 << 0, 
    ImGuiCorner_TopRight    = 1 << 1, 
    ImGuiCorner_BottomRight = 1 << 2, 
    ImGuiCorner_BottomLeft  = 1 << 3, 
    ImGuiCorner_All         = 0x0F
};



struct  ImRect
{
    ImVec2      Min;    
    ImVec2      Max;    

    ImRect()                                        : Min(3.402823466e+38F,3.402823466e+38F), Max(-3.402823466e+38F,-3.402823466e+38F)  {}
    ImRect(const ImVec2& min, const ImVec2& max)    : Min(min), Max(max)                            {}
    ImRect(const ImVec4& v)                         : Min(v.x, v.y), Max(v.z, v.w)                  {}
    ImRect(float x1, float y1, float x2, float y2)  : Min(x1, y1), Max(x2, y2)                      {}

    ImVec2      GetCenter() const               { return ImVec2((Min.x+Max.x)*0.5f, (Min.y+Max.y)*0.5f); }
    ImVec2      GetSize() const                 { return ImVec2(Max.x-Min.x, Max.y-Min.y); }
    float       GetWidth() const                { return Max.x-Min.x; }
    float       GetHeight() const               { return Max.y-Min.y; }
    ImVec2      GetTL() const                   { return Min; }                   
    ImVec2      GetTR() const                   { return ImVec2(Max.x, Min.y); }  
    ImVec2      GetBL() const                   { return ImVec2(Min.x, Max.y); }  
    ImVec2      GetBR() const                   { return Max; }                   
    bool        Contains(const ImVec2& p) const { return p.x >= Min.x     && p.y >= Min.y     && p.x < Max.x     && p.y < Max.y; }
    bool        Contains(const ImRect& r) const { return r.Min.x >= Min.x && r.Min.y >= Min.y && r.Max.x < Max.x && r.Max.y < Max.y; }
    bool        Overlaps(const ImRect& r) const { return r.Min.y < Max.y  && r.Max.y > Min.y  && r.Min.x < Max.x && r.Max.x > Min.x; }
    void        Add(const ImVec2& rhs)          { if (Min.x > rhs.x)     Min.x = rhs.x;     if (Min.y > rhs.y) Min.y = rhs.y;         if (Max.x < rhs.x) Max.x = rhs.x;         if (Max.y < rhs.y) Max.y = rhs.y; }
    void        Add(const ImRect& rhs)          { if (Min.x > rhs.Min.x) Min.x = rhs.Min.x; if (Min.y > rhs.Min.y) Min.y = rhs.Min.y; if (Max.x < rhs.Max.x) Max.x = rhs.Max.x; if (Max.y < rhs.Max.y) Max.y = rhs.Max.y; }
    void        Expand(const float amount)      { Min.x -= amount;   Min.y -= amount;   Max.x += amount;   Max.y += amount; }
    void        Expand(const ImVec2& amount)    { Min.x -= amount.x; Min.y -= amount.y; Max.x += amount.x; Max.y += amount.y; }
    void        Reduce(const ImVec2& amount)    { Min.x += amount.x; Min.y += amount.y; Max.x -= amount.x; Max.y -= amount.y; }
    void        Clip(const ImRect& clip)        { if (Min.x < clip.Min.x) Min.x = clip.Min.x; if (Min.y < clip.Min.y) Min.y = clip.Min.y; if (Max.x > clip.Max.x) Max.x = clip.Max.x; if (Max.y > clip.Max.y) Max.y = clip.Max.y; }
    void        Floor()                         { Min.x = (float)(int)Min.x; Min.y = (float)(int)Min.y; Max.x = (float)(int)Max.x; Max.y = (float)(int)Max.y; }
    ImVec2      GetClosestPoint(ImVec2 p, bool on_edge) const
    {
        if (!on_edge && Contains(p))
            return p;
        if (p.x > Max.x) p.x = Max.x;
        else if (p.x < Min.x) p.x = Min.x;
        if (p.y > Max.y) p.y = Max.y;
        else if (p.y < Min.y) p.y = Min.y;
        return p;
    }
};


struct ImGuiColMod
{
    ImGuiCol    Col;
    ImVec4      BackupValue;
};


struct ImGuiStyleMod
{
    ImGuiStyleVar   VarIdx;
    union           { int BackupInt[2]; float BackupFloat[2]; };
    ImGuiStyleMod(ImGuiStyleVar idx, int v)     { VarIdx = idx; BackupInt[0] = v; }
    ImGuiStyleMod(ImGuiStyleVar idx, float v)   { VarIdx = idx; BackupFloat[0] = v; }
    ImGuiStyleMod(ImGuiStyleVar idx, ImVec2 v)  { VarIdx = idx; BackupFloat[0] = v.x; BackupFloat[1] = v.y; }
};


struct ImGuiGroupData
{
    ImVec2      BackupCursorPos;
    ImVec2      BackupCursorMaxPos;
    float       BackupIndentX;
    float       BackupGroupOffsetX;
    float       BackupCurrentLineHeight;
    float       BackupCurrentLineTextBaseOffset;
    float       BackupLogLinePosY;
    bool        BackupActiveIdIsAlive;
    bool        AdvanceCursor;
};


struct ImGuiColumnData
{
    float       OffsetNorm;     
    
};


struct  ImGuiSimpleColumns
{
    int         Count;
    float       Spacing;
    float       Width, NextWidth;
    float       Pos[8], NextWidths[8];

    ImGuiSimpleColumns();
    void        Update(int count, float spacing, bool clear);
    float       DeclColumns(float w0, float w1, float w2);
    float       CalcExtraSpace(float avail_w);
};


struct  ImGuiTextEditState
{
    ImGuiID             Id;                         
    ImVector<ImWchar>   Text;                       
    ImVector<char>      InitialText;                
    ImVector<char>      TempTextBuffer;
    int                 CurLenA, CurLenW;           
    int                 BufSizeA;                   
    float               ScrollX;
    ImGuiStb::STB_TexteditState   StbState;
    float               CursorAnim;
    bool                CursorFollow;
    bool                SelectedAllMouseLock;

    ImGuiTextEditState()                            { memset(this, 0, sizeof(*this)); }
    void                CursorAnimReset()           { CursorAnim = -0.30f; }                                   
    void                CursorClamp()               { StbState.cursor = ImMin(StbState.cursor, CurLenW); StbState.select_start = ImMin(StbState.select_start, CurLenW); StbState.select_end = ImMin(StbState.select_end, CurLenW); }
    bool                HasSelection() const        { return StbState.select_start != StbState.select_end; }
    void                ClearSelection()            { StbState.select_start = StbState.select_end = StbState.cursor; }
    void                SelectAll()                 { StbState.select_start = 0; StbState.select_end = CurLenW; StbState.cursor = StbState.select_end; StbState.has_preferred_x = false; }
    void                OnKeyPressed(int key);
};


struct ImGuiIniData
{
    char*       Name;
    ImGuiID     Id;
    ImVec2      Pos;
    ImVec2      Size;
    bool        Collapsed;
};


struct ImGuiMouseCursorData
{
    ImGuiMouseCursor    Type;
    ImVec2              HotOffset;
    ImVec2              Size;
    ImVec2              TexUvMin[2];
    ImVec2              TexUvMax[2];
};


struct ImGuiPopupRef
{
    ImGuiID         PopupId;        
    ImGuiWindow*    Window;         
    ImGuiWindow*    ParentWindow;   
    ImGuiID         ParentMenuSet;  
    ImVec2          MousePosOnOpen; 

    ImGuiPopupRef(ImGuiID id, ImGuiWindow* parent_window, ImGuiID parent_menu_set, const ImVec2& mouse_pos) { PopupId = id; Window = 0; ParentWindow = parent_window; ParentMenuSet = parent_menu_set; MousePosOnOpen = mouse_pos; }
};


struct ImGuiContext
{
    bool                    Initialized;
    ImGuiIO                 IO;
    ImGuiStyle              Style;
    ImFont*                 Font;                               
    float                   FontSize;                           
    float                   FontBaseSize;                       
    ImVec2                  FontTexUvWhitePixel;                

    float                   Time;
    int                     FrameCount;
    int                     FrameCountEnded;
    int                     FrameCountRendered;
    ImVector<ImGuiWindow*>  Windows;
    ImVector<ImGuiWindow*>  WindowsSortBuffer;
    ImGuiWindow*            CurrentWindow;                      
    ImVector<ImGuiWindow*>  CurrentWindowStack;
    ImGuiWindow*            FocusedWindow;                      
    ImGuiWindow*            HoveredWindow;                      
    ImGuiWindow*            HoveredRootWindow;                  
    ImGuiID                 HoveredId;                          
    bool                    HoveredIdAllowOverlap;
    ImGuiID                 HoveredIdPreviousFrame;
    ImGuiID                 ActiveId;                           
    ImGuiID                 ActiveIdPreviousFrame;
    bool                    ActiveIdIsAlive;
    bool                    ActiveIdIsJustActivated;            
    bool                    ActiveIdAllowOverlap;               
    ImVec2                  ActiveIdClickOffset;                
    ImGuiWindow*            ActiveIdWindow;
    ImGuiWindow*            MovedWindow;                        
    ImGuiID                 MovedWindowMoveId;                  
    ImVector<ImGuiIniData>  Settings;                           
    float                   SettingsDirtyTimer;                 
    ImVector<ImGuiColMod>   ColorModifiers;                     
    ImVector<ImGuiStyleMod> StyleModifiers;                     
    ImVector<ImFont*>       FontStack;                          
    ImVector<ImGuiPopupRef> OpenPopupStack;                     
    ImVector<ImGuiPopupRef> CurrentPopupStack;                  

    
    ImVec2                  SetNextWindowPosVal;
    ImVec2                  SetNextWindowSizeVal;
    ImVec2                  SetNextWindowContentSizeVal;
    bool                    SetNextWindowCollapsedVal;
    ImGuiSetCond            SetNextWindowPosCond;
    ImGuiSetCond            SetNextWindowSizeCond;
    ImGuiSetCond            SetNextWindowContentSizeCond;
    ImGuiSetCond            SetNextWindowCollapsedCond;
    ImRect                  SetNextWindowSizeConstraintRect;           
    ImGuiSizeConstraintCallback SetNextWindowSizeConstraintCallback;
    void*                       SetNextWindowSizeConstraintCallbackUserData;
    bool                    SetNextWindowSizeConstraint;
    bool                    SetNextWindowFocus;
    bool                    SetNextTreeNodeOpenVal;
    ImGuiSetCond            SetNextTreeNodeOpenCond;

    
    ImDrawData              RenderDrawData;                     
    ImVector<ImDrawList*>   RenderDrawLists[3];
    float                   ModalWindowDarkeningRatio;
    ImDrawList              OverlayDrawList;                    
    ImGuiMouseCursor        MouseCursor;
    ImGuiMouseCursorData    MouseCursorData[ImGuiMouseCursor_Count_];

    
    ImGuiTextEditState      InputTextState;
    ImFont                  InputTextPasswordFont;
    ImGuiID                 ScalarAsInputTextId;                
    ImGuiStorage            ColorEditModeStorage;               
    float                   DragCurrentValue;                   
    ImVec2                  DragLastMouseDelta;
    float                   DragSpeedDefaultRatio;              
    float                   DragSpeedScaleSlow;
    float                   DragSpeedScaleFast;
    ImVec2                  ScrollbarClickDeltaToGrabCenter;    
    char                    Tooltip[1024];
    char*                   PrivateClipboard;                   
    ImVec2                  OsImePosRequest, OsImePosSet;       

    
    bool                    LogEnabled;
    FILE*                   LogFile;                            
    ImGuiTextBuffer*        LogClipboard;                       
    int                     LogStartDepth;
    int                     LogAutoExpandMaxDepth;

    
    float                   FramerateSecPerFrame[120];          
    int                     FramerateSecPerFrameIdx;
    float                   FramerateSecPerFrameAccum;
    int                     CaptureMouseNextFrame;              
    int                     CaptureKeyboardNextFrame;
    char                    TempBuffer[1024*3+1];               

    ImGuiContext()
    {
        Initialized = false;
        Font = 0;
        FontSize = FontBaseSize = 0.0f;
        FontTexUvWhitePixel = ImVec2(0.0f, 0.0f);

        Time = 0.0f;
        FrameCount = 0;
        FrameCountEnded = FrameCountRendered = -1;
        CurrentWindow = 0;
        FocusedWindow = 0;
        HoveredWindow = 0;
        HoveredRootWindow = 0;
        HoveredId = 0;
        HoveredIdAllowOverlap = false;
        HoveredIdPreviousFrame = 0;
        ActiveId = 0;
        ActiveIdPreviousFrame = 0;
        ActiveIdIsAlive = false;
        ActiveIdIsJustActivated = false;
        ActiveIdAllowOverlap = false;
        ActiveIdClickOffset = ImVec2(-1,-1);
        ActiveIdWindow = 0;
        MovedWindow = 0;
        MovedWindowMoveId = 0;
        SettingsDirtyTimer = 0.0f;

        SetNextWindowPosVal = ImVec2(0.0f, 0.0f);
        SetNextWindowSizeVal = ImVec2(0.0f, 0.0f);
        SetNextWindowCollapsedVal = false;
        SetNextWindowPosCond = 0;
        SetNextWindowSizeCond = 0;
        SetNextWindowContentSizeCond = 0;
        SetNextWindowCollapsedCond = 0;
        SetNextWindowSizeConstraintRect = ImRect();
        SetNextWindowSizeConstraintCallback = 0;
        SetNextWindowSizeConstraintCallbackUserData = 0;
        SetNextWindowSizeConstraint = false;
        SetNextWindowFocus = false;
        SetNextTreeNodeOpenVal = false;
        SetNextTreeNodeOpenCond = 0;

        ScalarAsInputTextId = 0;
        DragCurrentValue = 0.0f;
        DragLastMouseDelta = ImVec2(0.0f, 0.0f);
        DragSpeedDefaultRatio = 1.0f / 100.0f;
        DragSpeedScaleSlow = 0.01f;
        DragSpeedScaleFast = 10.0f;
        ScrollbarClickDeltaToGrabCenter = ImVec2(0.0f, 0.0f);
        memset(Tooltip, 0, sizeof(Tooltip));
        PrivateClipboard = 0;
        OsImePosRequest = OsImePosSet = ImVec2(-1.0f, -1.0f);

        ModalWindowDarkeningRatio = 0.0f;
        OverlayDrawList._OwnerName = "##Overlay"; 
        MouseCursor = ImGuiMouseCursor_Arrow;
        memset(MouseCursorData, 0, sizeof(MouseCursorData));

        LogEnabled = false;
        LogFile = 0;
        LogClipboard = 0;
        LogStartDepth = 0;
        LogAutoExpandMaxDepth = 2;

        memset(FramerateSecPerFrame, 0, sizeof(FramerateSecPerFrame));
        FramerateSecPerFrameIdx = 0;
        FramerateSecPerFrameAccum = 0.0f;
        CaptureMouseNextFrame = CaptureKeyboardNextFrame = -1;
        memset(TempBuffer, 0, sizeof(TempBuffer));
    }
};



struct  ImGuiDrawContext
{
    ImVec2                  CursorPos;
    ImVec2                  CursorPosPrevLine;
    ImVec2                  CursorStartPos;
    ImVec2                  CursorMaxPos;           
    float                   CurrentLineHeight;
    float                   CurrentLineTextBaseOffset;
    float                   PrevLineHeight;
    float                   PrevLineTextBaseOffset;
    float                   LogLinePosY;
    int                     TreeDepth;
    ImGuiID                 LastItemId;
    ImRect                  LastItemRect;
    bool                    LastItemHoveredAndUsable;  
    bool                    LastItemHoveredRect;       
    bool                    MenuBarAppending;
    float                   MenuBarOffsetX;
    ImVector<ImGuiWindow*>  ChildWindows;
    ImGuiStorage*           StateStorage;
    ImGuiLayoutType         LayoutType;

    
    float                   ItemWidth;              
    float                   TextWrapPos;            
    bool                    AllowKeyboardFocus;     
    bool                    ButtonRepeat;           
    ImVector<float>         ItemWidthStack;
    ImVector<float>         TextWrapPosStack;
    ImVector<bool>          AllowKeyboardFocusStack;
    ImVector<bool>          ButtonRepeatStack;
    ImVector<ImGuiGroupData>GroupStack;
    ImGuiColorEditMode      ColorEditMode;
    int                     StackSizesBackup[6];    

    float                   IndentX;                
    float                   GroupOffsetX;
    float                   ColumnsOffsetX;         
    int                     ColumnsCurrent;
    int                     ColumnsCount;
    float                   ColumnsMinX;
    float                   ColumnsMaxX;
    float                   ColumnsStartPosY;
    float                   ColumnsCellMinY;
    float                   ColumnsCellMaxY;
    bool                    ColumnsShowBorders;
    ImGuiID                 ColumnsSetId;
    ImVector<ImGuiColumnData> ColumnsData;

    ImGuiDrawContext()
    {
        CursorPos = CursorPosPrevLine = CursorStartPos = CursorMaxPos = ImVec2(0.0f, 0.0f);
        CurrentLineHeight = PrevLineHeight = 0.0f;
        CurrentLineTextBaseOffset = PrevLineTextBaseOffset = 0.0f;
        LogLinePosY = -1.0f;
        TreeDepth = 0;
        LastItemId = 0;
        LastItemRect = ImRect(0.0f,0.0f,0.0f,0.0f);
        LastItemHoveredAndUsable = LastItemHoveredRect = false;
        MenuBarAppending = false;
        MenuBarOffsetX = 0.0f;
        StateStorage = 0;
        LayoutType = ImGuiLayoutType_Vertical;
        ItemWidth = 0.0f;
        ButtonRepeat = false;
        AllowKeyboardFocus = true;
        TextWrapPos = -1.0f;
        ColorEditMode = ImGuiColorEditMode_RGB;
        memset(StackSizesBackup, 0, sizeof(StackSizesBackup));

        IndentX = 0.0f;
        GroupOffsetX = 0.0f;
        ColumnsOffsetX = 0.0f;
        ColumnsCurrent = 0;
        ColumnsCount = 1;
        ColumnsMinX = ColumnsMaxX = 0.0f;
        ColumnsStartPosY = 0.0f;
        ColumnsCellMinY = ColumnsCellMaxY = 0.0f;
        ColumnsShowBorders = true;
        ColumnsSetId = 0;
    }
};


struct  ImGuiWindow
{
    char*                   Name;
    ImGuiID                 ID;                                 
    ImGuiWindowFlags        Flags;                              
    int                     IndexWithinParent;                  
    ImVec2                  PosFloat;
    ImVec2                  Pos;                                
    ImVec2                  Size;                               
    ImVec2                  SizeFull;                           
    ImVec2                  SizeContents;                       
    ImVec2                  SizeContentsExplicit;               
    ImRect                  ContentsRegionRect;                 
    ImVec2                  WindowPadding;                      
    ImGuiID                 MoveId;                             
    ImVec2                  Scroll;
    ImVec2                  ScrollTarget;                       
    ImVec2                  ScrollTargetCenterRatio;            
    bool                    ScrollbarX, ScrollbarY;
    ImVec2                  ScrollbarSizes;
    float                   BorderSize;
    bool                    Active;                             
    bool                    WasActive;
    bool                    Accessed;                           
    bool                    Collapsed;                          
    bool                    SkipItems;                          
    int                     BeginCount;                         
    ImGuiID                 PopupId;                            
    int                     AutoFitFramesX, AutoFitFramesY;
    bool                    AutoFitOnlyGrows;
    int                     AutoPosLastDirection;
    int                     HiddenFrames;
    int                     SetWindowPosAllowFlags;             
    int                     SetWindowSizeAllowFlags;            
    int                     SetWindowCollapsedAllowFlags;       
    bool                    SetWindowPosCenterWanted;

    ImGuiDrawContext        DC;                                 
    ImVector<ImGuiID>       IDStack;                            
    ImRect                  ClipRect;                           
    ImRect                  WindowRectClipped;                  
    int                     LastFrameActive;
    float                   ItemWidthDefault;
    ImGuiSimpleColumns      MenuColumns;                        
    ImGuiStorage            StateStorage;
    float                   FontWindowScale;                    
    ImDrawList*             DrawList;
    ImGuiWindow*            RootWindow;                         
    ImGuiWindow*            RootNonPopupWindow;                 
    ImGuiWindow*            ParentWindow;                       

    
    int                     FocusIdxAllCounter;                 
    int                     FocusIdxTabCounter;                 
    int                     FocusIdxAllRequestCurrent;          
    int                     FocusIdxTabRequestCurrent;          
    int                     FocusIdxAllRequestNext;             
    int                     FocusIdxTabRequestNext;             

public:
    ImGuiWindow(const char* name);
    ~ImGuiWindow();

    ImGuiID     GetID(const char* str, const char* str_end = 0);
    ImGuiID     GetID(const void* ptr);
    ImGuiID     GetIDNoKeepAlive(const char* str, const char* str_end = 0);

    ImRect      Rect() const                            { return ImRect(Pos.x, Pos.y, Pos.x+Size.x, Pos.y+Size.y); }
    float       CalcFontSize() const                    { return GImGui->FontBaseSize * FontWindowScale; }
    float       TitleBarHeight() const                  { return (Flags & ImGuiWindowFlags_NoTitleBar) ? 0.0f : CalcFontSize() + GImGui->Style.FramePadding.y * 2.0f; }
    ImRect      TitleBarRect() const                    { return ImRect(Pos, ImVec2(Pos.x + SizeFull.x, Pos.y + TitleBarHeight())); }
    float       MenuBarHeight() const                   { return (Flags & ImGuiWindowFlags_MenuBar) ? CalcFontSize() + GImGui->Style.FramePadding.y * 2.0f : 0.0f; }
    ImRect      MenuBarRect() const                     { float y1 = Pos.y + TitleBarHeight(); return ImRect(Pos.x, y1, Pos.x + SizeFull.x, y1 + MenuBarHeight()); }
};






namespace ImGui
{
    
    
    
    
    inline    ImGuiWindow*  GetCurrentWindowRead()      { ImGuiContext& g = *GImGui; return g.CurrentWindow; }
    inline    ImGuiWindow*  GetCurrentWindow()          { ImGuiContext& g = *GImGui; g.CurrentWindow->Accessed = true; return g.CurrentWindow; }
     ImGuiWindow*  GetParentWindow();
     ImGuiWindow*  FindWindowByName(const char* name);
     void          FocusWindow(ImGuiWindow* window);

     void          EndFrame();                 

     void          SetActiveID(ImGuiID id, ImGuiWindow* window);
	 void          ClearActiveID();
     void          SetHoveredID(ImGuiID id);
     void          KeepAliveID(ImGuiID id);

     void          ItemSize(const ImVec2& size, float text_offset_y = 0.0f);
     void          ItemSize(const ImRect& bb, float text_offset_y = 0.0f);
     bool          ItemAdd(const ImRect& bb, const ImGuiID* id);
     bool          IsClippedEx(const ImRect& bb, const ImGuiID* id, bool clip_even_when_logged);
     bool          IsHovered(const ImRect& bb, ImGuiID id, bool flatten_childs = false);
     bool          FocusableItemRegister(ImGuiWindow* window, bool is_active, bool tab_stop = true);      
     void          FocusableItemUnregister(ImGuiWindow* window);
     ImVec2        CalcItemSize(ImVec2 size, float default_x, float default_y);
     float         CalcWrapWidthForPos(const ImVec2& pos, float wrap_pos_x);

     void          OpenPopupEx(const char* str_id, bool reopen_existing);

    
    
    
     void          RenderText(ImVec2 pos, const char* text, const char* text_end = 0, bool hide_text_after_hash = true);
     void          RenderTextWrapped(ImVec2 pos, const char* text, const char* text_end, float wrap_width);
     void          RenderTextClipped(const ImVec2& pos_min, const ImVec2& pos_max, const char* text, const char* text_end, const ImVec2* text_size_if_known, const ImVec2& align = ImVec2(0,0), const ImRect* clip_rect = 0);
     void          RenderFrame(ImVec2 p_min, ImVec2 p_max, ImU32 fill_col, bool border = true, float rounding = 0.0f);
     void          RenderCollapseTriangle(ImVec2 pos, bool is_open, float scale = 1.0f);
     void          RenderBullet(ImVec2 pos);
     void          RenderCheckMark(ImVec2 pos, ImU32 col);
     const char*   FindRenderedTextEnd(const char* text, const char* text_end = 0); 

     bool          ButtonBehavior(const ImRect& bb, ImGuiID id, bool* out_hovered, bool* out_held, ImGuiButtonFlags flags = 0);
     bool          ButtonEx(const char* label, const ImVec2& size_arg = ImVec2(0,0), ImGuiButtonFlags flags = 0);
     bool          CloseButton(ImGuiID id, const ImVec2& pos, float radius);

     bool          SliderBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_min, float v_max, float power, int decimal_precision, ImGuiSliderFlags flags = 0);
     bool          SliderFloatN(const char* label, float* v, int components, float v_min, float v_max, const char* display_format, float power);
     bool          SliderIntN(const char* label, int* v, int components, int v_min, int v_max, const char* display_format);

     bool          DragBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_speed, float v_min, float v_max, int decimal_precision, float power);
     bool          DragFloatN(const char* label, float* v, int components, float v_speed, float v_min, float v_max, const char* display_format, float power);
     bool          DragIntN(const char* label, int* v, int components, float v_speed, int v_min, int v_max, const char* display_format);

     bool          InputTextEx(const char* label, char* buf, int buf_size, const ImVec2& size_arg, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputFloatN(const char* label, float* v, int components, int decimal_precision, ImGuiInputTextFlags extra_flags);
     bool          InputIntN(const char* label, int* v, int components, ImGuiInputTextFlags extra_flags);
     bool          InputScalarEx(const char* label, ImGuiDataType data_type, void* data_ptr, void* step_ptr, void* step_fast_ptr, const char* scalar_format, ImGuiInputTextFlags extra_flags);
     bool          InputScalarAsWidgetReplacement(const ImRect& aabb, const char* label, ImGuiDataType data_type, void* data_ptr, ImGuiID id, int decimal_precision);

     bool          TreeNodeBehavior(ImGuiID id, ImGuiTreeNodeFlags flags, const char* label, const char* label_end = 0);
     bool          TreeNodeBehaviorIsOpen(ImGuiID id, ImGuiTreeNodeFlags flags = 0);                     
     void          TreePushRawID(ImGuiID id);

     void          PlotEx(ImGuiPlotType plot_type, const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size);

     int           ParseFormatPrecision(const char* fmt, int default_value);
     float         RoundScalar(float value, int decimal_precision);

} 






#pragma warning (pop)
#line 777 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"
#line 622 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"

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
#line 624 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"
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
#line 625 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"




#line 630 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"
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





#line 631 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"
#line 632 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"


#pragma warning (disable: 4127) 
#pragma warning (disable: 4505) 
#pragma warning (disable: 4996) 
#line 638 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"


















#line 657 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"





static void             LogRenderedText(const ImVec2& ref_pos, const char* text, const char* text_end = 0);

static void             PushMultiItemsWidths(int components, float w_full = 0.0f);
static float            GetDraggedColumnOffset(int column_index);

static bool             IsKeyPressedMap(ImGuiKey key, bool repeat = true);

static ImFont*          GetDefaultFont();
static void             SetCurrentFont(ImFont* font);
static void             SetCurrentWindow(ImGuiWindow* window);
static void             SetWindowScrollY(ImGuiWindow* window, float new_scroll_y);
static void             SetWindowPos(ImGuiWindow* window, const ImVec2& pos, ImGuiSetCond cond);
static void             SetWindowSize(ImGuiWindow* window, const ImVec2& size, ImGuiSetCond cond);
static void             SetWindowCollapsed(ImGuiWindow* window, bool collapsed, ImGuiSetCond cond);
static ImGuiWindow*     FindHoveredWindow(ImVec2 pos, bool excluding_childs);
static ImGuiWindow*     CreateNewWindow(const char* name, ImVec2 size, ImGuiWindowFlags flags);
static inline bool      IsWindowContentHoverable(ImGuiWindow* window);
static void             ClearSetNextWindowData();
static void             CheckStacksSize(ImGuiWindow* window, bool write);
static void             Scrollbar(ImGuiWindow* window, bool horizontal);

static void             AddDrawListToRenderList(ImVector<ImDrawList*>& out_render_list, ImDrawList* draw_list);
static void             AddWindowToRenderList(ImVector<ImDrawList*>& out_render_list, ImGuiWindow* window);
static void             AddWindowToSortedBuffer(ImVector<ImGuiWindow*>& out_sorted_windows, ImGuiWindow* window);

static ImGuiIniData*    FindWindowSettings(const char* name);
static ImGuiIniData*    AddWindowSettings(const char* name);
static void             LoadIniSettingsFromDisk(const char* ini_filename);
static void             SaveIniSettingsToDisk(const char* ini_filename);
static void             MarkIniSettingsDirty();

static void             PushColumnClipRect(int column_index = -1);
static ImRect           GetVisibleRect();

static bool             BeginPopupEx(const char* str_id, ImGuiWindowFlags extra_flags);
static void             CloseInactivePopups();
static void             ClosePopupToLevel(int remaining);
static void             ClosePopup(ImGuiID id);
static bool             IsPopupOpen(ImGuiID id);
static ImGuiWindow*     GetFrontMostModalRootWindow();
static ImVec2           FindBestPopupWindowPos(const ImVec2& base_pos, const ImVec2& size, int* last_dir, const ImRect& rect_to_avoid);

static bool             InputTextFilterCharacter(unsigned int* p_char, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data);
static int              InputTextCalcTextLenAndLineCount(const char* text_begin, const char** out_text_end);
static ImVec2           InputTextCalcTextSizeW(const ImWchar* text_begin, const ImWchar* text_end, const ImWchar** remaining = 0, ImVec2* out_offset = 0, bool stop_on_new_line = false);

static inline void      DataTypeFormatString(ImGuiDataType data_type, void* data_ptr, const char* display_format, char* buf, int buf_size);
static inline void      DataTypeFormatString(ImGuiDataType data_type, void* data_ptr, int decimal_precision, char* buf, int buf_size);
static void             DataTypeApplyOp(ImGuiDataType data_type, int op, void* value1, const void* value2);
static bool             DataTypeApplyOpFromText(const char* buf, const char* initial_value_buf, ImGuiDataType data_type, void* data_ptr, const char* scalar_format);





static const char*      GetClipboardTextFn_DefaultImpl(void* user_data);
static void             SetClipboardTextFn_DefaultImpl(void* user_data, const char* text);
static void             ImeSetInputScreenPosFn_DefaultImpl(int x, int y);







static ImFontAtlas      GImDefaultFontAtlas;







static ImGuiContext     GImDefaultContext;
ImGuiContext*           GImGui = &GImDefaultContext;
#line 738 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"





ImGuiStyle::ImGuiStyle()
{
    Alpha                   = 1.0f;             
    WindowPadding           = ImVec2(8,8);      
    WindowMinSize           = ImVec2(32,32);    
    WindowRounding          = 9.0f;             
    WindowTitleAlign        = ImVec2(0.0f,0.5f);
    ChildWindowRounding     = 0.0f;             
    FramePadding            = ImVec2(4,3);      
    FrameRounding           = 0.0f;             
    ItemSpacing             = ImVec2(8,4);      
    ItemInnerSpacing        = ImVec2(4,4);      
    TouchExtraPadding       = ImVec2(0,0);      
    IndentSpacing           = 21.0f;            
    ColumnsMinSpacing       = 6.0f;             
    ScrollbarSize           = 16.0f;            
    ScrollbarRounding       = 9.0f;             
    GrabMinSize             = 10.0f;            
    GrabRounding            = 0.0f;             
    ButtonTextAlign         = ImVec2(0.5f,0.5f);
    DisplayWindowPadding    = ImVec2(22,22);    
    DisplaySafeAreaPadding  = ImVec2(4,4);      
    AntiAliasedLines        = true;             
    AntiAliasedShapes       = true;             
    CurveTessellationTol    = 1.25f;            

    Colors[ImGuiCol_Text]                   = ImVec4(0.90f, 0.90f, 0.90f, 1.00f);
    Colors[ImGuiCol_TextDisabled]           = ImVec4(0.60f, 0.60f, 0.60f, 1.00f);
    Colors[ImGuiCol_WindowBg]               = ImVec4(0.00f, 0.00f, 0.00f, 0.70f);
    Colors[ImGuiCol_ChildWindowBg]          = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
    Colors[ImGuiCol_PopupBg]                = ImVec4(0.05f, 0.05f, 0.10f, 0.90f);
    Colors[ImGuiCol_Border]                 = ImVec4(0.70f, 0.70f, 0.70f, 0.65f);
    Colors[ImGuiCol_BorderShadow]           = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
    Colors[ImGuiCol_FrameBg]                = ImVec4(0.80f, 0.80f, 0.80f, 0.30f);   
    Colors[ImGuiCol_FrameBgHovered]         = ImVec4(0.90f, 0.80f, 0.80f, 0.40f);
    Colors[ImGuiCol_FrameBgActive]          = ImVec4(0.90f, 0.65f, 0.65f, 0.45f);
    Colors[ImGuiCol_TitleBg]                = ImVec4(0.27f, 0.27f, 0.54f, 0.83f);
    Colors[ImGuiCol_TitleBgCollapsed]       = ImVec4(0.40f, 0.40f, 0.80f, 0.20f);
    Colors[ImGuiCol_TitleBgActive]          = ImVec4(0.32f, 0.32f, 0.63f, 0.87f);
    Colors[ImGuiCol_MenuBarBg]              = ImVec4(0.40f, 0.40f, 0.55f, 0.80f);
    Colors[ImGuiCol_ScrollbarBg]            = ImVec4(0.20f, 0.25f, 0.30f, 0.60f);
    Colors[ImGuiCol_ScrollbarGrab]          = ImVec4(0.40f, 0.40f, 0.80f, 0.30f);
    Colors[ImGuiCol_ScrollbarGrabHovered]   = ImVec4(0.40f, 0.40f, 0.80f, 0.40f);
    Colors[ImGuiCol_ScrollbarGrabActive]    = ImVec4(0.80f, 0.50f, 0.50f, 0.40f);
    Colors[ImGuiCol_ComboBg]                = ImVec4(0.20f, 0.20f, 0.20f, 0.99f);
    Colors[ImGuiCol_CheckMark]              = ImVec4(0.90f, 0.90f, 0.90f, 0.50f);
    Colors[ImGuiCol_SliderGrab]             = ImVec4(1.00f, 1.00f, 1.00f, 0.30f);
    Colors[ImGuiCol_SliderGrabActive]       = ImVec4(0.80f, 0.50f, 0.50f, 1.00f);
    Colors[ImGuiCol_Button]                 = ImVec4(0.47f, 0.40f, 0.40f, 0.60f);
    Colors[ImGuiCol_ButtonHovered]          = ImVec4(0.47f, 0.40f, 0.40f, 1.00f);
    Colors[ImGuiCol_ButtonActive]           = ImVec4(0.60f, 0.50f, 0.50f, 1.00f);
    Colors[ImGuiCol_Header]                 = ImVec4(0.40f, 0.40f, 0.90f, 0.45f);
    Colors[ImGuiCol_HeaderHovered]          = ImVec4(0.45f, 0.45f, 0.90f, 0.80f);
    Colors[ImGuiCol_HeaderActive]           = ImVec4(0.53f, 0.53f, 0.87f, 0.80f);
    Colors[ImGuiCol_Column]                 = ImVec4(0.50f, 0.50f, 0.50f, 1.00f);
    Colors[ImGuiCol_ColumnHovered]          = ImVec4(0.70f, 0.60f, 0.60f, 1.00f);
    Colors[ImGuiCol_ColumnActive]           = ImVec4(0.90f, 0.70f, 0.70f, 1.00f);
    Colors[ImGuiCol_ResizeGrip]             = ImVec4(1.00f, 1.00f, 1.00f, 0.30f);
    Colors[ImGuiCol_ResizeGripHovered]      = ImVec4(1.00f, 1.00f, 1.00f, 0.60f);
    Colors[ImGuiCol_ResizeGripActive]       = ImVec4(1.00f, 1.00f, 1.00f, 0.90f);
    Colors[ImGuiCol_CloseButton]            = ImVec4(0.50f, 0.50f, 0.90f, 0.50f);
    Colors[ImGuiCol_CloseButtonHovered]     = ImVec4(0.70f, 0.70f, 0.90f, 0.60f);
    Colors[ImGuiCol_CloseButtonActive]      = ImVec4(0.70f, 0.70f, 0.70f, 1.00f);
    Colors[ImGuiCol_PlotLines]              = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
    Colors[ImGuiCol_PlotLinesHovered]       = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
    Colors[ImGuiCol_PlotHistogram]          = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
    Colors[ImGuiCol_PlotHistogramHovered]   = ImVec4(1.00f, 0.60f, 0.00f, 1.00f);
    Colors[ImGuiCol_TextSelectedBg]         = ImVec4(0.00f, 0.00f, 1.00f, 0.35f);
    Colors[ImGuiCol_ModalWindowDarkening]   = ImVec4(0.20f, 0.20f, 0.20f, 0.35f);
}

ImGuiIO::ImGuiIO()
{
    
    memset(this, 0, sizeof(*this));

    DisplaySize = ImVec2(-1.0f, -1.0f);
    DeltaTime = 1.0f/60.0f;
    IniSavingRate = 5.0f;
    IniFilename = "imgui.ini";
    LogFilename = "imgui_log.txt";
    Fonts = &GImDefaultFontAtlas;
    FontGlobalScale = 1.0f;
    FontDefault = 0;
    DisplayFramebufferScale = ImVec2(1.0f, 1.0f);
    MousePos = ImVec2(-1,-1);
    MousePosPrev = ImVec2(-1,-1);
    MouseDoubleClickTime = 0.30f;
    MouseDoubleClickMaxDist = 6.0f;
    MouseDragThreshold = 6.0f;
    for (int i = 0; i < ((int)(sizeof(MouseDownDuration)/sizeof(*MouseDownDuration))); i++)
        MouseDownDuration[i] = MouseDownDurationPrev[i] = -1.0f;
    for (int i = 0; i < ((int)(sizeof(KeysDownDuration)/sizeof(*KeysDownDuration))); i++)
        KeysDownDuration[i] = KeysDownDurationPrev[i] = -1.0f;
    for (int i = 0; i < ImGuiKey_COUNT; i++)
        KeyMap[i] = -1;
    KeyRepeatDelay = 0.250f;
    KeyRepeatRate = 0.050f;
    UserData = 0;

    
    RenderDrawListsFn = 0;
    MemAllocFn = malloc;
    MemFreeFn = free;
    GetClipboardTextFn = GetClipboardTextFn_DefaultImpl;   
    SetClipboardTextFn = SetClipboardTextFn_DefaultImpl;
    ClipboardUserData = 0;
    ImeSetInputScreenPosFn = ImeSetInputScreenPosFn_DefaultImpl;

    



}




void ImGuiIO::AddInputCharacter(ImWchar c)
{
    const int n = ImStrlenW(InputCharacters);
    if (n + 1 < ((int)(sizeof(InputCharacters)/sizeof(*InputCharacters))))
    {
        InputCharacters[n] = c;
        InputCharacters[n+1] = '\0';
    }
}

void ImGuiIO::AddInputCharactersUTF8(const char* utf8_chars)
{
    
    const int wchars_buf_len = sizeof(ImGuiIO::InputCharacters) / sizeof(ImWchar);
    ImWchar wchars[wchars_buf_len];
    ImTextStrFromUtf8(wchars, wchars_buf_len, utf8_chars, 0);
    for (int i = 0; i < wchars_buf_len && wchars[i] != 0; i++)
        AddInputCharacter(wchars[i]);
}













#line 894 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"

bool ImIsPointInTriangle(const ImVec2& p, const ImVec2& a, const ImVec2& b, const ImVec2& c)
{
    bool b1 = ((p.x - b.x) * (a.y - b.y) - (p.y - b.y) * (a.x - b.x)) < 0.0f;
    bool b2 = ((p.x - c.x) * (b.y - c.y) - (p.y - c.y) * (b.x - c.x)) < 0.0f;
    bool b3 = ((p.x - a.x) * (c.y - a.y) - (p.y - a.y) * (c.x - a.x)) < 0.0f;
    return ((b1 == b2) && (b2 == b3));
}

int ImStricmp(const char* str1, const char* str2)
{
    int d;
    while ((d = toupper(*str2) - toupper(*str1)) == 0 && *str1) { str1++; str2++; }
    return d;
}

int ImStrnicmp(const char* str1, const char* str2, int count)
{
    int d = 0;
    while (count > 0 && (d = toupper(*str2) - toupper(*str1)) == 0 && *str1) { str1++; str2++; count--; }
    return d;
}

void ImStrncpy(char* dst, const char* src, int count)
{
    if (count < 1) return;
    strncpy(dst, src, (size_t)count);
    dst[count-1] = 0;
}

char* ImStrdup(const char *str)
{
    size_t len = strlen(str) + 1;
    void* buff = ImGui::MemAlloc(len);
    return (char*)memcpy(buff, (const void*)str, len);
}

int ImStrlenW(const ImWchar* str)
{
    int n = 0;
    while (*str++) n++;
    return n;
}

const ImWchar* ImStrbolW(const ImWchar* buf_mid_line, const ImWchar* buf_begin) 
{
    while (buf_mid_line > buf_begin && buf_mid_line[-1] != '\n')
        buf_mid_line--;
    return buf_mid_line;
}

const char* ImStristr(const char* haystack, const char* haystack_end, const char* needle, const char* needle_end)
{
    if (!needle_end)
        needle_end = needle + strlen(needle);

    const char un0 = (char)toupper(*needle);
    while ((!haystack_end && *haystack) || (haystack_end && haystack < haystack_end))
    {
        if (toupper(*haystack) == un0)
        {
            const char* b = needle + 1;
            for (const char* a = haystack + 1; b < needle_end; a++, b++)
                if (toupper(*a) != toupper(*b))
                    break;
            if (b == needle_end)
                return haystack;
        }
        haystack++;
    }
    return 0;
}




int ImFormatString(char* buf, int buf_size, const char* fmt, ...)
{
    (void)( (!!(buf_size > 0)) || (_wassert(L"buf_size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(972)), 0) );
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    int w = vsnprintf(buf, buf_size, fmt, args);
    ((void)(args = (va_list)0));
    if (w == -1 || w >= buf_size)
        w = buf_size - 1;
    buf[w] = 0;
    return w;
}

int ImFormatStringV(char* buf, int buf_size, const char* fmt, va_list args)
{
    (void)( (!!(buf_size > 0)) || (_wassert(L"buf_size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(985)), 0) );
    int w = vsnprintf(buf, buf_size, fmt, args);
    if (w == -1 || w >= buf_size)
        w = buf_size - 1;
    buf[w] = 0;
    return w;
}



ImU32 ImHash(const void* data, int data_size, ImU32 seed)
{
    static ImU32 crc32_lut[256] = { 0 };
    if (!crc32_lut[1])
    {
        const ImU32 polynomial = 0xEDB88320;
        for (ImU32 i = 0; i < 256; i++)
        {
            ImU32 crc = i;
            for (ImU32 j = 0; j < 8; j++)
                crc = (crc >> 1) ^ (ImU32(-int(crc & 1)) & polynomial);
            crc32_lut[i] = crc;
        }
    }

    seed = ~seed;
    ImU32 crc = seed;
    const unsigned char* current = (const unsigned char*)data;

    if (data_size > 0)
    {
        
        while (data_size--)
            crc = (crc >> 8) ^ crc32_lut[(crc & 0xFF) ^ *current++];
    }
    else
    {
        
        while (unsigned char c = *current++)
        {
            
            
            
            
            if (c == '#' && current[0] == '#' && current[1] == '#')
                crc = seed;
            crc = (crc >> 8) ^ crc32_lut[(crc & 0xFF) ^ c];
        }
    }
    return ~crc;
}








int ImTextCharFromUtf8(unsigned int* out_char, const char* in_text, const char* in_text_end)
{
    unsigned int c = (unsigned int)-1;
    const unsigned char* str = (const unsigned char*)in_text;
    if (!(*str & 0x80))
    {
        c = (unsigned int)(*str++);
        *out_char = c;
        return 1;
    }
    if ((*str & 0xe0) == 0xc0)
    {
        *out_char = 0xFFFD; 
        if (in_text_end && in_text_end - (const char*)str < 2) return 1;
        if (*str < 0xc2) return 2;
        c = (unsigned int)((*str++ & 0x1f) << 6);
        if ((*str & 0xc0) != 0x80) return 2;
        c += (*str++ & 0x3f);
        *out_char = c;
        return 2;
    }
    if ((*str & 0xf0) == 0xe0)
    {
        *out_char = 0xFFFD; 
        if (in_text_end && in_text_end - (const char*)str < 3) return 1;
        if (*str == 0xe0 && (str[1] < 0xa0 || str[1] > 0xbf)) return 3;
        if (*str == 0xed && str[1] > 0x9f) return 3; 
        c = (unsigned int)((*str++ & 0x0f) << 12);
        if ((*str & 0xc0) != 0x80) return 3;
        c += (unsigned int)((*str++ & 0x3f) << 6);
        if ((*str & 0xc0) != 0x80) return 3;
        c += (*str++ & 0x3f);
        *out_char = c;
        return 3;
    }
    if ((*str & 0xf8) == 0xf0)
    {
        *out_char = 0xFFFD; 
        if (in_text_end && in_text_end - (const char*)str < 4) return 1;
        if (*str > 0xf4) return 4;
        if (*str == 0xf0 && (str[1] < 0x90 || str[1] > 0xbf)) return 4;
        if (*str == 0xf4 && str[1] > 0x8f) return 4; 
        c = (unsigned int)((*str++ & 0x07) << 18);
        if ((*str & 0xc0) != 0x80) return 4;
        c += (unsigned int)((*str++ & 0x3f) << 12);
        if ((*str & 0xc0) != 0x80) return 4;
        c += (unsigned int)((*str++ & 0x3f) << 6);
        if ((*str & 0xc0) != 0x80) return 4;
        c += (*str++ & 0x3f);
        
        if ((c & 0xFFFFF800) == 0xD800) return 4;
        *out_char = c;
        return 4;
    }
    *out_char = 0;
    return 0;
}

int ImTextStrFromUtf8(ImWchar* buf, int buf_size, const char* in_text, const char* in_text_end, const char** in_text_remaining)
{
    ImWchar* buf_out = buf;
    ImWchar* buf_end = buf + buf_size;
    while (buf_out < buf_end-1 && (!in_text_end || in_text < in_text_end) && *in_text)
    {
        unsigned int c;
        in_text += ImTextCharFromUtf8(&c, in_text, in_text_end);
        if (c == 0)
            break;
        if (c < 0x10000)    
            *buf_out++ = (ImWchar)c;
    }
    *buf_out = 0;
    if (in_text_remaining)
        *in_text_remaining = in_text;
    return (int)(buf_out - buf);
}

int ImTextCountCharsFromUtf8(const char* in_text, const char* in_text_end)
{
    int char_count = 0;
    while ((!in_text_end || in_text < in_text_end) && *in_text)
    {
        unsigned int c;
        in_text += ImTextCharFromUtf8(&c, in_text, in_text_end);
        if (c == 0)
            break;
        if (c < 0x10000)
            char_count++;
    }
    return char_count;
}


static inline int ImTextCharToUtf8(char* buf, int buf_size, unsigned int c)
{
    if (c < 0x80)
    {
        buf[0] = (char)c;
        return 1;
    }
    if (c < 0x800)
    {
        if (buf_size < 2) return 0;
        buf[0] = (char)(0xc0 + (c >> 6));
        buf[1] = (char)(0x80 + (c & 0x3f));
        return 2;
    }
    if (c >= 0xdc00 && c < 0xe000)
    {
        return 0;
    }
    if (c >= 0xd800 && c < 0xdc00)
    {
        if (buf_size < 4) return 0;
        buf[0] = (char)(0xf0 + (c >> 18));
        buf[1] = (char)(0x80 + ((c >> 12) & 0x3f));
        buf[2] = (char)(0x80 + ((c >> 6) & 0x3f));
        buf[3] = (char)(0x80 + ((c ) & 0x3f));
        return 4;
    }
    
    {
        if (buf_size < 3) return 0;
        buf[0] = (char)(0xe0 + (c >> 12));
        buf[1] = (char)(0x80 + ((c>> 6) & 0x3f));
        buf[2] = (char)(0x80 + ((c ) & 0x3f));
        return 3;
    }
}

static inline int ImTextCountUtf8BytesFromChar(unsigned int c)
{
    if (c < 0x80) return 1;
    if (c < 0x800) return 2;
    if (c >= 0xdc00 && c < 0xe000) return 0;
    if (c >= 0xd800 && c < 0xdc00) return 4;
    return 3;
}

int ImTextStrToUtf8(char* buf, int buf_size, const ImWchar* in_text, const ImWchar* in_text_end)
{
    char* buf_out = buf;
    const char* buf_end = buf + buf_size;
    while (buf_out < buf_end-1 && (!in_text_end || in_text < in_text_end) && *in_text)
    {
        unsigned int c = (unsigned int)(*in_text++);
        if (c < 0x80)
            *buf_out++ = (char)c;
        else
            buf_out += ImTextCharToUtf8(buf_out, (int)(buf_end-buf_out-1), c);
    }
    *buf_out = 0;
    return (int)(buf_out - buf);
}

int ImTextCountUtf8BytesFromStr(const ImWchar* in_text, const ImWchar* in_text_end)
{
    int bytes_count = 0;
    while ((!in_text_end || in_text < in_text_end) && *in_text)
    {
        unsigned int c = (unsigned int)(*in_text++);
        if (c < 0x80)
            bytes_count++;
        else
            bytes_count += ImTextCountUtf8BytesFromChar(c);
    }
    return bytes_count;
}

ImVec4 ImGui::ColorConvertU32ToFloat4(ImU32 in)
{
    float s = 1.0f/255.0f;
    return ImVec4(
        ((in >> 0) & 0xFF) * s,
        ((in >> 8) & 0xFF) * s,
        ((in >> 16) & 0xFF) * s,
        ((in >> 24) & 0xFF) * s);
}

ImU32 ImGui::ColorConvertFloat4ToU32(const ImVec4& in)
{
    ImU32 out;
    out  = ((ImU32)((int)(ImSaturate(in.x) * 255.0f + 0.5f))) << 0;
    out |= ((ImU32)((int)(ImSaturate(in.y) * 255.0f + 0.5f))) << 8;
    out |= ((ImU32)((int)(ImSaturate(in.z) * 255.0f + 0.5f))) << 16;
    out |= ((ImU32)((int)(ImSaturate(in.w) * 255.0f + 0.5f))) << 24;
    return out;
}

ImU32 ImGui::GetColorU32(ImGuiCol idx, float alpha_mul)  
{ 
    ImVec4 c = GImGui->Style.Colors[idx]; 
    c.w *= GImGui->Style.Alpha * alpha_mul; 
    return ColorConvertFloat4ToU32(c); 
}

ImU32 ImGui::GetColorU32(const ImVec4& col)
{ 
    ImVec4 c = col; 
    c.w *= GImGui->Style.Alpha; 
    return ColorConvertFloat4ToU32(c); 
}



void ImGui::ColorConvertRGBtoHSV(float r, float g, float b, float& out_h, float& out_s, float& out_v)
{
    float K = 0.f;
    if (g < b)
    {
        const float tmp = g; g = b; b = tmp;
        K = -1.f;
    }
    if (r < g)
    {
        const float tmp = r; r = g; g = tmp;
        K = -2.f / 6.f - K;
    }

    const float chroma = r - (g < b ? g : b);
    out_h = fabsf(K + (g - b) / (6.f * chroma + 1e-20f));
    out_s = chroma / (r + 1e-20f);
    out_v = r;
}



void ImGui::ColorConvertHSVtoRGB(float h, float s, float v, float& out_r, float& out_g, float& out_b)
{
    if (s == 0.0f)
    {
        
        out_r = out_g = out_b = v;
        return;
    }

    h = fmodf(h, 1.0f) / (60.0f/360.0f);
    int   i = (int)h;
    float f = h - (float)i;
    float p = v * (1.0f - s);
    float q = v * (1.0f - s * f);
    float t = v * (1.0f - s * (1.0f - f));

    switch (i)
    {
    case 0: out_r = v; out_g = t; out_b = p; break;
    case 1: out_r = q; out_g = v; out_b = p; break;
    case 2: out_r = p; out_g = v; out_b = t; break;
    case 3: out_r = p; out_g = q; out_b = v; break;
    case 4: out_r = t; out_g = p; out_b = v; break;
    case 5: default: out_r = v; out_g = p; out_b = q; break;
    }
}

FILE* ImFileOpen(const char* filename, const char* mode)
{

    
    const int filename_wsize = ImTextCountCharsFromUtf8(filename, 0) + 1;
    const int mode_wsize = ImTextCountCharsFromUtf8(mode, 0) + 1;
    ImVector<ImWchar> buf;
    buf.resize(filename_wsize + mode_wsize);
    ImTextStrFromUtf8(&buf[0], filename_wsize, filename, 0);
    ImTextStrFromUtf8(&buf[filename_wsize], mode_wsize, mode, 0);
    return _wfopen((wchar_t*)&buf[0], (wchar_t*)&buf[filename_wsize]);


#line 1312 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"
}



void* ImFileLoadToMemory(const char* filename, const char* file_open_mode, int* out_file_size, int padding_bytes)
{
    (void)( (!!(filename && file_open_mode)) || (_wassert(L"filename && file_open_mode", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(1318)), 0) );
    if (out_file_size)
        *out_file_size = 0;

    FILE* f;
    if ((f = ImFileOpen(filename, file_open_mode)) == 0)
        return 0;

    long file_size_signed;
    if (fseek(f, 0, 2) || (file_size_signed = ftell(f)) == -1 || fseek(f, 0, 0))
    {
        fclose(f);
        return 0;
    }

    int file_size = (int)file_size_signed;
    void* file_data = ImGui::MemAlloc(file_size + padding_bytes);
    if (file_data == 0)
    {
        fclose(f);
        return 0;
    }
    if (fread(file_data, 1, (size_t)file_size, f) != (size_t)file_size)
    {
        fclose(f);
        ImGui::MemFree(file_data);
        return 0;
    }
    if (padding_bytes > 0)
        memset((void *)(((char*)file_data) + file_size), 0, padding_bytes);

    fclose(f);
    if (out_file_size)
        *out_file_size = file_size;

    return file_data;
}






void ImGuiStorage::Clear()
{
    Data.clear();
}


static ImVector<ImGuiStorage::Pair>::iterator LowerBound(ImVector<ImGuiStorage::Pair>& data, ImGuiID key)
{
    ImVector<ImGuiStorage::Pair>::iterator first = data.begin();
    ImVector<ImGuiStorage::Pair>::iterator last = data.end();
    int count = (int)(last - first);
    while (count > 0)
    {
        int count2 = count / 2;
        ImVector<ImGuiStorage::Pair>::iterator mid = first + count2;
        if (mid->key < key)
        {
            first = ++mid;
            count -= count2 + 1;
        }
        else
        {
            count = count2;
        }
    }
    return first;
}

int ImGuiStorage::GetInt(ImGuiID key, int default_val) const
{
    ImVector<Pair>::iterator it = LowerBound(const_cast<ImVector<ImGuiStorage::Pair>&>(Data), key);
    if (it == Data.end() || it->key != key)
        return default_val;
    return it->val_i;
}

bool ImGuiStorage::GetBool(ImGuiID key, bool default_val) const
{
    return GetInt(key, default_val ? 1 : 0) != 0;
}

float ImGuiStorage::GetFloat(ImGuiID key, float default_val) const
{
    ImVector<Pair>::iterator it = LowerBound(const_cast<ImVector<ImGuiStorage::Pair>&>(Data), key);
    if (it == Data.end() || it->key != key)
        return default_val;
    return it->val_f;
}

void* ImGuiStorage::GetVoidPtr(ImGuiID key) const
{
    ImVector<Pair>::iterator it = LowerBound(const_cast<ImVector<ImGuiStorage::Pair>&>(Data), key);
    if (it == Data.end() || it->key != key)
        return 0;
    return it->val_p;
}


int* ImGuiStorage::GetIntRef(ImGuiID key, int default_val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
        it = Data.insert(it, Pair(key, default_val));
    return &it->val_i;
}

bool* ImGuiStorage::GetBoolRef(ImGuiID key, bool default_val)
{
    return (bool*)GetIntRef(key, default_val ? 1 : 0);
}

float* ImGuiStorage::GetFloatRef(ImGuiID key, float default_val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
        it = Data.insert(it, Pair(key, default_val));
    return &it->val_f;
}

void** ImGuiStorage::GetVoidPtrRef(ImGuiID key, void* default_val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
        it = Data.insert(it, Pair(key, default_val));
    return &it->val_p;
}


void ImGuiStorage::SetInt(ImGuiID key, int val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
    {
        Data.insert(it, Pair(key, val));
        return;
    }
    it->val_i = val;
}

void ImGuiStorage::SetBool(ImGuiID key, bool val)
{
    SetInt(key, val ? 1 : 0);
}

void ImGuiStorage::SetFloat(ImGuiID key, float val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
    {
        Data.insert(it, Pair(key, val));
        return;
    }
    it->val_f = val;
}

void ImGuiStorage::SetVoidPtr(ImGuiID key, void* val)
{
    ImVector<Pair>::iterator it = LowerBound(Data, key);
    if (it == Data.end() || it->key != key)
    {
        Data.insert(it, Pair(key, val));
        return;
    }
    it->val_p = val;
}

void ImGuiStorage::SetAllInt(int v)
{
    for (int i = 0; i < Data.Size; i++)
        Data[i].val_i = v;
}






ImGuiTextFilter::ImGuiTextFilter(const char* default_filter)
{
    if (default_filter)
    {
        ImStrncpy(InputBuf, default_filter, ((int)(sizeof(InputBuf)/sizeof(*InputBuf))));
        Build();
    }
    else
    {
        InputBuf[0] = 0;
        CountGrep = 0;
    }
}

bool ImGuiTextFilter::Draw(const char* label, float width)
{
    if (width != 0.0f)
        ImGui::PushItemWidth(width);
    bool value_changed = ImGui::InputText(label, InputBuf, ((int)(sizeof(InputBuf)/sizeof(*InputBuf))));
    if (width != 0.0f)
        ImGui::PopItemWidth();
    if (value_changed)
        Build();
    return value_changed;
}

void ImGuiTextFilter::TextRange::split(char separator, ImVector<TextRange>& out)
{
    out.resize(0);
    const char* wb = b;
    const char* we = wb;
    while (we < e)
    {
        if (*we == separator)
        {
            out.push_back(TextRange(wb, we));
            wb = we + 1;
        }
        we++;
    }
    if (wb != we)
        out.push_back(TextRange(wb, we));
}

void ImGuiTextFilter::Build()
{
    Filters.resize(0);
    TextRange input_range(InputBuf, InputBuf+strlen(InputBuf));
    input_range.split(',', Filters);

    CountGrep = 0;
    for (int i = 0; i != Filters.Size; i++)
    {
        Filters[i].trim_blanks();
        if (Filters[i].empty())
            continue;
        if (Filters[i].front() != '-')
            CountGrep += 1;
    }
}

bool ImGuiTextFilter::PassFilter(const char* text, const char* text_end) const
{
    if (Filters.empty())
        return true;

    if (text == 0)
        text = "";

    for (int i = 0; i != Filters.Size; i++)
    {
        const TextRange& f = Filters[i];
        if (f.empty())
            continue;
        if (f.front() == '-')
        {
            
            if (ImStristr(text, text_end, f.begin()+1, f.end()) != 0)
                return false;
        }
        else
        {
            
            if (ImStristr(text, text_end, f.begin(), f.end()) != 0)
                return true;
        }
    }

    
    if (CountGrep == 0)
        return true;

    return false;
}












void ImGuiTextBuffer::appendv(const char* fmt, va_list args)
{
    va_list args_copy;
    ((args_copy) = (args));

    int len = vsnprintf(0, 0, fmt, args);         
    if (len <= 0)
        return;

    const int write_off = Buf.Size;
    const int needed_sz = write_off + len;
    if (write_off + len >= Buf.Capacity)
    {
        int double_capacity = Buf.Capacity * 2;
        Buf.reserve(needed_sz > double_capacity ? needed_sz : double_capacity);
    }

    Buf.resize(needed_sz);
    ImFormatStringV(&Buf[write_off] - 1, len+1, fmt, args_copy);
}

void ImGuiTextBuffer::append(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    appendv(fmt, args);
    ((void)(args = (va_list)0));
}





ImGuiSimpleColumns::ImGuiSimpleColumns()
{
    Count = 0;
    Spacing = Width = NextWidth = 0.0f;
    memset(Pos, 0, sizeof(Pos));
    memset(NextWidths, 0, sizeof(NextWidths));
}

void ImGuiSimpleColumns::Update(int count, float spacing, bool clear)
{
    (void)( (!!(Count <= ((int)(sizeof(Pos)/sizeof(*Pos))))) || (_wassert(L"Count <= ((int)(sizeof(Pos)/sizeof(*Pos)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(1647)), 0) );
    Count = count;
    Width = NextWidth = 0.0f;
    Spacing = spacing;
    if (clear) memset(NextWidths, 0, sizeof(NextWidths));
    for (int i = 0; i < Count; i++)
    {
        if (i > 0 && NextWidths[i] > 0.0f)
            Width += Spacing;
        Pos[i] = (float)(int)Width;
        Width += NextWidths[i];
        NextWidths[i] = 0.0f;
    }
}

float ImGuiSimpleColumns::DeclColumns(float w0, float w1, float w2) 
{
    NextWidth = 0.0f;
    NextWidths[0] = ImMax(NextWidths[0], w0);
    NextWidths[1] = ImMax(NextWidths[1], w1);
    NextWidths[2] = ImMax(NextWidths[2], w2);
    for (int i = 0; i < 3; i++)
        NextWidth += NextWidths[i] + ((i > 0 && NextWidths[i] > 0.0f) ? Spacing : 0.0f);
    return ImMax(Width, NextWidth);
}

float ImGuiSimpleColumns::CalcExtraSpace(float avail_w)
{
    return ImMax(0.0f, avail_w - Width);
}





static void SetCursorPosYAndSetupDummyPrevLine(float pos_y, float line_height)
{
    
    
    ImGui::SetCursorPosY(pos_y);
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    window->DC.CursorPosPrevLine.y = window->DC.CursorPos.y - line_height;      
    window->DC.PrevLineHeight = (line_height - GImGui->Style.ItemSpacing.y);    
    if (window->DC.ColumnsCount > 1)
        window->DC.ColumnsCellMinY = window->DC.CursorPos.y;                    
}




void ImGuiListClipper::Begin(int count, float items_height)
{
    StartPosY = ImGui::GetCursorPosY();
    ItemsHeight = items_height;
    ItemsCount = count;
    StepNo = 0;
    DisplayEnd = DisplayStart = -1;
    if (ItemsHeight > 0.0f)
    {
        ImGui::CalcListClipping(ItemsCount, ItemsHeight, &DisplayStart, &DisplayEnd); 
        if (DisplayStart > 0)
            SetCursorPosYAndSetupDummyPrevLine(StartPosY + DisplayStart * ItemsHeight, ItemsHeight); 
        StepNo = 2;
    }
}

void ImGuiListClipper::End()
{
    if (ItemsCount < 0)
        return;
    
    if (ItemsCount < 2147483647)
        SetCursorPosYAndSetupDummyPrevLine(StartPosY + ItemsCount * ItemsHeight, ItemsHeight); 
    ItemsCount = -1;
    StepNo = 3;
}

bool ImGuiListClipper::Step()
{
    if (ItemsCount == 0 || ImGui::GetCurrentWindowRead()->SkipItems)
    {
        ItemsCount = -1; 
        return false; 
    }
    if (StepNo == 0) 
    {
        DisplayStart = 0;
        DisplayEnd = 1;
        StartPosY = ImGui::GetCursorPosY();
        StepNo = 1;
        return true;
    }
    if (StepNo == 1) 
    {
        if (ItemsCount == 1) { ItemsCount = -1; return false; }
        float items_height = ImGui::GetCursorPosY() - StartPosY;
        (void)( (!!(items_height > 0.0f)) || (_wassert(L"items_height > 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(1743)), 0) );   
        Begin(ItemsCount-1, items_height);
        DisplayStart++;
        DisplayEnd++;
        StepNo = 3;
        return true;
    }
    if (StepNo == 2) 
    {
        (void)( (!!(DisplayStart >= 0 && DisplayEnd >= 0)) || (_wassert(L"DisplayStart >= 0 && DisplayEnd >= 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(1752)), 0) );
        StepNo = 3;
        return true;
    }
    if (StepNo == 3) 
        End();
    return false;
}





ImGuiWindow::ImGuiWindow(const char* name)
{
    Name = ImStrdup(name);
    ID = ImHash(name, 0);
    IDStack.push_back(ID);
    MoveId = GetID("#MOVE");

    Flags = 0;
    IndexWithinParent = 0;
    PosFloat = Pos = ImVec2(0.0f, 0.0f);
    Size = SizeFull = ImVec2(0.0f, 0.0f);
    SizeContents = SizeContentsExplicit = ImVec2(0.0f, 0.0f);
    WindowPadding = ImVec2(0.0f, 0.0f);
    Scroll = ImVec2(0.0f, 0.0f);
    ScrollTarget = ImVec2(3.402823466e+38F, 3.402823466e+38F);
    ScrollTargetCenterRatio = ImVec2(0.5f, 0.5f);
    ScrollbarX = ScrollbarY = false;
    ScrollbarSizes = ImVec2(0.0f, 0.0f);
    BorderSize = 0.0f;
    Active = WasActive = false;
    Accessed = false;
    Collapsed = false;
    SkipItems = false;
    BeginCount = 0;
    PopupId = 0;
    AutoFitFramesX = AutoFitFramesY = -1;
    AutoFitOnlyGrows = false;
    AutoPosLastDirection = -1;
    HiddenFrames = 0;
    SetWindowPosAllowFlags = SetWindowSizeAllowFlags = SetWindowCollapsedAllowFlags = ImGuiSetCond_Always | ImGuiSetCond_Once | ImGuiSetCond_FirstUseEver | ImGuiSetCond_Appearing;
    SetWindowPosCenterWanted = false;

    LastFrameActive = -1;
    ItemWidthDefault = 0.0f;
    FontWindowScale = 1.0f;

    DrawList = (ImDrawList*)ImGui::MemAlloc(sizeof(ImDrawList));
    new(ImPlacementNewDummy(), DrawList) ImDrawList();
    DrawList->_OwnerName = Name;
    RootWindow = 0;
    RootNonPopupWindow = 0;
    ParentWindow = 0;

    FocusIdxAllCounter = FocusIdxTabCounter = -1;
    FocusIdxAllRequestCurrent = FocusIdxTabRequestCurrent = 2147483647;
    FocusIdxAllRequestNext = FocusIdxTabRequestNext = 2147483647;
}

ImGuiWindow::~ImGuiWindow()
{
    DrawList->~ImDrawList();
    ImGui::MemFree(DrawList);
    DrawList = 0;
    ImGui::MemFree(Name);
    Name = 0;
}

ImGuiID ImGuiWindow::GetID(const char* str, const char* str_end)
{
    ImGuiID seed = IDStack.back();
    ImGuiID id = ImHash(str, str_end ? (int)(str_end - str) : 0, seed);
    ImGui::KeepAliveID(id);
    return id;
}

ImGuiID ImGuiWindow::GetID(const void* ptr)
{
    ImGuiID seed = IDStack.back();
    ImGuiID id = ImHash(&ptr, sizeof(void*), seed);
    ImGui::KeepAliveID(id);
    return id;
}

ImGuiID ImGuiWindow::GetIDNoKeepAlive(const char* str, const char* str_end)
{
    ImGuiID seed = IDStack.back();
    return ImHash(str, str_end ? (int)(str_end - str) : 0, seed);
}





static void SetCurrentWindow(ImGuiWindow* window)
{
    ImGuiContext& g = *GImGui;
    g.CurrentWindow = window;
    if (window)
        g.FontSize = window->CalcFontSize();
}

ImGuiWindow* ImGui::GetParentWindow()
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(g.CurrentWindowStack.Size >= 2)) || (_wassert(L"g.CurrentWindowStack.Size >= 2", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(1859)), 0) );
    return g.CurrentWindowStack[(unsigned int)g.CurrentWindowStack.Size - 2];
}

void ImGui::SetActiveID(ImGuiID id, ImGuiWindow* window)
{
    ImGuiContext& g = *GImGui;
    g.ActiveId = id;
    g.ActiveIdAllowOverlap = false;
    g.ActiveIdIsJustActivated = true;
    if (id)
        g.ActiveIdIsAlive = true;
    g.ActiveIdWindow = window;
}

void ImGui::ClearActiveID()
{
    SetActiveID(0, 0);
}

void ImGui::SetHoveredID(ImGuiID id)
{
    ImGuiContext& g = *GImGui;
    g.HoveredId = id;
    g.HoveredIdAllowOverlap = false;
}

void ImGui::KeepAliveID(ImGuiID id)
{
    ImGuiContext& g = *GImGui;
    if (g.ActiveId == id)
        g.ActiveIdIsAlive = true;
}


void ImGui::ItemSize(const ImVec2& size, float text_offset_y)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    
    ImGuiContext& g = *GImGui;
    const float line_height = ImMax(window->DC.CurrentLineHeight, size.y);
    const float text_base_offset = ImMax(window->DC.CurrentLineTextBaseOffset, text_offset_y);
    window->DC.CursorPosPrevLine = ImVec2(window->DC.CursorPos.x + size.x, window->DC.CursorPos.y);
    window->DC.CursorPos = ImVec2((float)(int)(window->Pos.x + window->DC.IndentX + window->DC.ColumnsOffsetX), (float)(int)(window->DC.CursorPos.y + line_height + g.Style.ItemSpacing.y));
    window->DC.CursorMaxPos.x = ImMax(window->DC.CursorMaxPos.x, window->DC.CursorPosPrevLine.x);
    window->DC.CursorMaxPos.y = ImMax(window->DC.CursorMaxPos.y, window->DC.CursorPos.y);

    

    window->DC.PrevLineHeight = line_height;
    window->DC.PrevLineTextBaseOffset = text_base_offset;
    window->DC.CurrentLineHeight = window->DC.CurrentLineTextBaseOffset = 0.0f;
}

void ImGui::ItemSize(const ImRect& bb, float text_offset_y)
{
    ItemSize(bb.GetSize(), text_offset_y);
}




bool ImGui::ItemAdd(const ImRect& bb, const ImGuiID* id)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.LastItemId = id ? *id : 0;
    window->DC.LastItemRect = bb;
    window->DC.LastItemHoveredAndUsable = window->DC.LastItemHoveredRect = false;
    if (IsClippedEx(bb, id, false))
        return false;

    
    ImGuiContext& g = *GImGui;
    if (IsMouseHoveringRect(bb.Min, bb.Max))
    {
        
        
        window->DC.LastItemHoveredRect = true;
        if (g.HoveredRootWindow == window->RootWindow)
            if (g.ActiveId == 0 || (id && g.ActiveId == *id) || g.ActiveIdAllowOverlap || (g.ActiveId == window->MoveId))
                if (IsWindowContentHoverable(window))
                    window->DC.LastItemHoveredAndUsable = true;
    }

    return true;
}

bool ImGui::IsClippedEx(const ImRect& bb, const ImGuiID* id, bool clip_even_when_logged)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindowRead();

    if (!bb.Overlaps(window->ClipRect))
        if (!id || *id != GImGui->ActiveId)
            if (clip_even_when_logged || !g.LogEnabled)
                return true;
    return false;
}


bool ImGui::IsHovered(const ImRect& bb, ImGuiID id, bool flatten_childs)
{
    ImGuiContext& g = *GImGui;
    if (g.HoveredId == 0 || g.HoveredId == id || g.HoveredIdAllowOverlap)
    {
        ImGuiWindow* window = GetCurrentWindowRead();
        if (g.HoveredWindow == window || (flatten_childs && g.HoveredRootWindow == window->RootWindow))
            if ((g.ActiveId == 0 || g.ActiveId == id || g.ActiveIdAllowOverlap) && IsMouseHoveringRect(bb.Min, bb.Max))
                if (IsWindowContentHoverable(g.HoveredRootWindow))
                    return true;
    }
    return false;
}

bool ImGui::FocusableItemRegister(ImGuiWindow* window, bool is_active, bool tab_stop)
{
    ImGuiContext& g = *GImGui;

    const bool allow_keyboard_focus = window->DC.AllowKeyboardFocus;
    window->FocusIdxAllCounter++;
    if (allow_keyboard_focus)
        window->FocusIdxTabCounter++;

    
    
    if (tab_stop && window->FocusIdxAllRequestNext == 2147483647 && window->FocusIdxTabRequestNext == 2147483647 && is_active && IsKeyPressedMap(ImGuiKey_Tab))
    {
        
        window->FocusIdxTabRequestNext = window->FocusIdxTabCounter + (g.IO.KeyShift ? (allow_keyboard_focus ? -1 : 0) : +1);
    }

    if (window->FocusIdxAllCounter == window->FocusIdxAllRequestCurrent)
        return true;

    if (allow_keyboard_focus)
        if (window->FocusIdxTabCounter == window->FocusIdxTabRequestCurrent)
            return true;

    return false;
}

void ImGui::FocusableItemUnregister(ImGuiWindow* window)
{
    window->FocusIdxAllCounter--;
    window->FocusIdxTabCounter--;
}

ImVec2 ImGui::CalcItemSize(ImVec2 size, float default_x, float default_y)
{
    ImGuiContext& g = *GImGui;
    ImVec2 content_max;
    if (size.x < 0.0f || size.y < 0.0f)
        content_max = g.CurrentWindow->Pos + GetContentRegionMax();
    if (size.x <= 0.0f)
        size.x = (size.x == 0.0f) ? default_x : ImMax(content_max.x - g.CurrentWindow->DC.CursorPos.x, 4.0f) + size.x;
    if (size.y <= 0.0f)
        size.y = (size.y == 0.0f) ? default_y : ImMax(content_max.y - g.CurrentWindow->DC.CursorPos.y, 4.0f) + size.y;
    return size;
}

float ImGui::CalcWrapWidthForPos(const ImVec2& pos, float wrap_pos_x)
{
    if (wrap_pos_x < 0.0f)
        return 0.0f;

    ImGuiWindow* window = GetCurrentWindowRead();
    if (wrap_pos_x == 0.0f)
        wrap_pos_x = GetContentRegionMax().x + window->Pos.x;
    else if (wrap_pos_x > 0.0f)
        wrap_pos_x += window->Pos.x - window->Scroll.x; 

    return ImMax(wrap_pos_x - pos.x, 1.0f);
}



void* ImGui::MemAlloc(size_t sz)
{
    GImGui->IO.MetricsAllocs++;
    return GImGui->IO.MemAllocFn(sz);
}

void ImGui::MemFree(void* ptr)
{
    if (ptr) GImGui->IO.MetricsAllocs--;
    return GImGui->IO.MemFreeFn(ptr);
}

const char* ImGui::GetClipboardText()
{
    return GImGui->IO.GetClipboardTextFn ? GImGui->IO.GetClipboardTextFn(GImGui->IO.ClipboardUserData) : "";
}

void ImGui::SetClipboardText(const char* text)
{
    if (GImGui->IO.SetClipboardTextFn)
        GImGui->IO.SetClipboardTextFn(GImGui->IO.ClipboardUserData, text);
}

const char* ImGui::GetVersion()
{
    return "1.50 WIP";
}



ImGuiContext* ImGui::GetCurrentContext()
{
    return GImGui;
}

void ImGui::SetCurrentContext(ImGuiContext* ctx)
{



    GImGui = ctx;
#line 2080 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"
}

ImGuiContext* ImGui::CreateContext(void* (*malloc_fn)(size_t), void (*free_fn)(void*))
{
    if (!malloc_fn) malloc_fn = malloc;
    ImGuiContext* ctx = (ImGuiContext*)malloc_fn(sizeof(ImGuiContext));
    new(ImPlacementNewDummy(), ctx) ImGuiContext();
    ctx->IO.MemAllocFn = malloc_fn;
    ctx->IO.MemFreeFn = free_fn ? free_fn : free;
    return ctx;
}

void ImGui::DestroyContext(ImGuiContext* ctx)
{
    void (*free_fn)(void*) = ctx->IO.MemFreeFn;
    ctx->~ImGuiContext();
    free_fn(ctx);
    if (GImGui == ctx)
        SetCurrentContext(0);
}

ImGuiIO& ImGui::GetIO()
{
    return GImGui->IO;
}

ImGuiStyle& ImGui::GetStyle()
{
    return GImGui->Style;
}


ImDrawData* ImGui::GetDrawData()
{
    return GImGui->RenderDrawData.Valid ? &GImGui->RenderDrawData : 0;
}

float ImGui::GetTime()
{
    return GImGui->Time;
}

int ImGui::GetFrameCount()
{
    return GImGui->FrameCount;
}

void ImGui::NewFrame()
{
    ImGuiContext& g = *GImGui;

    
    (void)( (!!(g.IO.DeltaTime >= 0.0f)) || (_wassert(L"g.IO.DeltaTime >= 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2132)), 0) );               
    (void)( (!!(g.IO.DisplaySize.x >= 0.0f && g.IO.DisplaySize.y >= 0.0f)) || (_wassert(L"g.IO.DisplaySize.x >= 0.0f && g.IO.DisplaySize.y >= 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2133)), 0) );
    (void)( (!!(g.IO.Fonts->Fonts.Size > 0)) || (_wassert(L"g.IO.Fonts->Fonts.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2134)), 0) );           
    (void)( (!!(g.IO.Fonts->Fonts[0]->IsLoaded())) || (_wassert(L"g.IO.Fonts->Fonts[0]->IsLoaded()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2135)), 0) );     
    (void)( (!!(g.Style.CurveTessellationTol > 0.0f)) || (_wassert(L"g.Style.CurveTessellationTol > 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2136)), 0) );  

    if (!g.Initialized)
    {
        
        g.LogClipboard = (ImGuiTextBuffer*)ImGui::MemAlloc(sizeof(ImGuiTextBuffer));
        new(ImPlacementNewDummy(), g.LogClipboard) ImGuiTextBuffer();

        (void)( (!!(g.Settings.empty())) || (_wassert(L"g.Settings.empty()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2144)), 0) );
        LoadIniSettingsFromDisk(g.IO.IniFilename);
        g.Initialized = true;
    }

    SetCurrentFont(GetDefaultFont());
    (void)( (!!(g.Font->IsLoaded())) || (_wassert(L"g.Font->IsLoaded()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2150)), 0) );

    g.Time += g.IO.DeltaTime;
    g.FrameCount += 1;
    g.Tooltip[0] = '\0';
    g.OverlayDrawList.Clear();
    g.OverlayDrawList.PushTextureID(g.IO.Fonts->TexID);
    g.OverlayDrawList.PushClipRectFullScreen();

    
    g.RenderDrawData.Valid = false;
    g.RenderDrawData.CmdLists = 0;
    g.RenderDrawData.CmdListsCount = g.RenderDrawData.TotalVtxCount = g.RenderDrawData.TotalIdxCount = 0;

    
    if (g.IO.MousePos.x < 0 && g.IO.MousePos.y < 0)
        g.IO.MousePos = ImVec2(-9999.0f, -9999.0f);
    if ((g.IO.MousePos.x < 0 && g.IO.MousePos.y < 0) || (g.IO.MousePosPrev.x < 0 && g.IO.MousePosPrev.y < 0))   
        g.IO.MouseDelta = ImVec2(0.0f, 0.0f);
    else
        g.IO.MouseDelta = g.IO.MousePos - g.IO.MousePosPrev;
    g.IO.MousePosPrev = g.IO.MousePos;
    for (int i = 0; i < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))); i++)
    {
        g.IO.MouseClicked[i] = g.IO.MouseDown[i] && g.IO.MouseDownDuration[i] < 0.0f;
        g.IO.MouseReleased[i] = !g.IO.MouseDown[i] && g.IO.MouseDownDuration[i] >= 0.0f;
        g.IO.MouseDownDurationPrev[i] = g.IO.MouseDownDuration[i];
        g.IO.MouseDownDuration[i] = g.IO.MouseDown[i] ? (g.IO.MouseDownDuration[i] < 0.0f ? 0.0f : g.IO.MouseDownDuration[i] + g.IO.DeltaTime) : -1.0f;
        g.IO.MouseDoubleClicked[i] = false;
        if (g.IO.MouseClicked[i])
        {
            if (g.Time - g.IO.MouseClickedTime[i] < g.IO.MouseDoubleClickTime)
            {
                if (ImLengthSqr(g.IO.MousePos - g.IO.MouseClickedPos[i]) < g.IO.MouseDoubleClickMaxDist * g.IO.MouseDoubleClickMaxDist)
                    g.IO.MouseDoubleClicked[i] = true;
                g.IO.MouseClickedTime[i] = -3.402823466e+38F;    
            }
            else
            {
                g.IO.MouseClickedTime[i] = g.Time;
            }
            g.IO.MouseClickedPos[i] = g.IO.MousePos;
            g.IO.MouseDragMaxDistanceSqr[i] = 0.0f;
        }
        else if (g.IO.MouseDown[i])
        {
            g.IO.MouseDragMaxDistanceSqr[i] = ImMax(g.IO.MouseDragMaxDistanceSqr[i], ImLengthSqr(g.IO.MousePos - g.IO.MouseClickedPos[i]));
        }
    }
    memcpy(g.IO.KeysDownDurationPrev, g.IO.KeysDownDuration, sizeof(g.IO.KeysDownDuration));
    for (int i = 0; i < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown))); i++)
        g.IO.KeysDownDuration[i] = g.IO.KeysDown[i] ? (g.IO.KeysDownDuration[i] < 0.0f ? 0.0f : g.IO.KeysDownDuration[i] + g.IO.DeltaTime) : -1.0f;

    
    g.FramerateSecPerFrameAccum += g.IO.DeltaTime - g.FramerateSecPerFrame[g.FramerateSecPerFrameIdx];
    g.FramerateSecPerFrame[g.FramerateSecPerFrameIdx] = g.IO.DeltaTime;
    g.FramerateSecPerFrameIdx = (g.FramerateSecPerFrameIdx + 1) % ((int)(sizeof(g.FramerateSecPerFrame)/sizeof(*g.FramerateSecPerFrame)));
    g.IO.Framerate = 1.0f / (g.FramerateSecPerFrameAccum / (float)((int)(sizeof(g.FramerateSecPerFrame)/sizeof(*g.FramerateSecPerFrame))));

    
    g.HoveredIdPreviousFrame = g.HoveredId;
    g.HoveredId = 0;
    g.HoveredIdAllowOverlap = false;
    if (!g.ActiveIdIsAlive && g.ActiveIdPreviousFrame == g.ActiveId && g.ActiveId != 0)
        ClearActiveID();
    g.ActiveIdPreviousFrame = g.ActiveId;
    g.ActiveIdIsAlive = false;
    g.ActiveIdIsJustActivated = false;

    
    if (g.MovedWindowMoveId && g.MovedWindowMoveId == g.ActiveId)
    {
        KeepAliveID(g.MovedWindowMoveId);
        (void)( (!!(g.MovedWindow && g.MovedWindow->RootWindow)) || (_wassert(L"g.MovedWindow && g.MovedWindow->RootWindow", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2223)), 0) );
        (void)( (!!(g.MovedWindow->RootWindow->MoveId == g.MovedWindowMoveId)) || (_wassert(L"g.MovedWindow->RootWindow->MoveId == g.MovedWindowMoveId", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2224)), 0) );
        if (g.IO.MouseDown[0])
        {
            if (!(g.MovedWindow->Flags & ImGuiWindowFlags_NoMove))
            {
                g.MovedWindow->PosFloat += g.IO.MouseDelta;
                if (!(g.MovedWindow->Flags & ImGuiWindowFlags_NoSavedSettings) && (g.IO.MouseDelta.x != 0.0f || g.IO.MouseDelta.y != 0.0f))
                    MarkIniSettingsDirty();
            }
            FocusWindow(g.MovedWindow);
        }
        else
        {
            ClearActiveID();
            g.MovedWindow = 0;
            g.MovedWindowMoveId = 0;
        }
    }
    else
    {
        g.MovedWindow = 0;
        g.MovedWindowMoveId = 0;
    }

    
    if (g.SettingsDirtyTimer > 0.0f)
    {
        g.SettingsDirtyTimer -= g.IO.DeltaTime;
        if (g.SettingsDirtyTimer <= 0.0f)
            SaveIniSettingsToDisk(g.IO.IniFilename);
    }

    
    g.HoveredWindow = g.MovedWindow ? g.MovedWindow : FindHoveredWindow(g.IO.MousePos, false);
    if (g.HoveredWindow && (g.HoveredWindow->Flags & ImGuiWindowFlags_ChildWindow))
        g.HoveredRootWindow = g.HoveredWindow->RootWindow;
    else
        g.HoveredRootWindow = g.MovedWindow ? g.MovedWindow->RootWindow : FindHoveredWindow(g.IO.MousePos, true);

    if (ImGuiWindow* modal_window = GetFrontMostModalRootWindow())
    {
        g.ModalWindowDarkeningRatio = ImMin(g.ModalWindowDarkeningRatio + g.IO.DeltaTime * 6.0f, 1.0f);
        ImGuiWindow* window = g.HoveredRootWindow;
        while (window && window != modal_window)
            window = window->ParentWindow;
        if (!window)
            g.HoveredRootWindow = g.HoveredWindow = 0;
    }
    else
    {
        g.ModalWindowDarkeningRatio = 0.0f;
    }

    
    
    int mouse_earliest_button_down = -1;
    bool mouse_any_down = false;
    for (int i = 0; i < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))); i++)
    {
        if (g.IO.MouseClicked[i])
            g.IO.MouseDownOwned[i] = (g.HoveredWindow != 0) || (!g.OpenPopupStack.empty());
        mouse_any_down |= g.IO.MouseDown[i];
        if (g.IO.MouseDown[i])
            if (mouse_earliest_button_down == -1 || g.IO.MouseClickedTime[mouse_earliest_button_down] > g.IO.MouseClickedTime[i])
                mouse_earliest_button_down = i;
    }
    bool mouse_avail_to_imgui = (mouse_earliest_button_down == -1) || g.IO.MouseDownOwned[mouse_earliest_button_down];
    if (g.CaptureMouseNextFrame != -1)
        g.IO.WantCaptureMouse = (g.CaptureMouseNextFrame != 0);
    else
        g.IO.WantCaptureMouse = (mouse_avail_to_imgui && (g.HoveredWindow != 0 || mouse_any_down)) || (g.ActiveId != 0) || (!g.OpenPopupStack.empty());
    g.IO.WantCaptureKeyboard = (g.CaptureKeyboardNextFrame != -1) ? (g.CaptureKeyboardNextFrame != 0) : (g.ActiveId != 0);
    g.IO.WantTextInput = (g.ActiveId != 0 && g.InputTextState.Id == g.ActiveId);
    g.MouseCursor = ImGuiMouseCursor_Arrow;
    g.CaptureMouseNextFrame = g.CaptureKeyboardNextFrame = -1;
    g.OsImePosRequest = ImVec2(1.0f, 1.0f); 

    
    if (!mouse_avail_to_imgui)
        g.HoveredWindow = g.HoveredRootWindow = 0;

    
    if (g.HoveredWindow && g.IO.MouseWheel != 0.0f && !g.HoveredWindow->Collapsed)
    {
        ImGuiWindow* window = g.HoveredWindow;
        if (g.IO.KeyCtrl)
        {
            if (g.IO.FontAllowUserScaling)
            {
                
                float new_font_scale = ImClamp(window->FontWindowScale + g.IO.MouseWheel * 0.10f, 0.50f, 2.50f);
                float scale = new_font_scale / window->FontWindowScale;
                window->FontWindowScale = new_font_scale;

                const ImVec2 offset = window->Size * (1.0f - scale) * (g.IO.MousePos - window->Pos) / window->Size;
                window->Pos += offset;
                window->PosFloat += offset;
                window->Size *= scale;
                window->SizeFull *= scale;
            }
        }
        else if (!(window->Flags & ImGuiWindowFlags_NoScrollWithMouse))
        {
            
            const int scroll_lines = (window->Flags & ImGuiWindowFlags_ComboBox) ? 3 : 5;
            SetWindowScrollY(window, window->Scroll.y - g.IO.MouseWheel * window->CalcFontSize() * scroll_lines);
        }
    }

    
    
    if (g.ActiveId == 0 && g.FocusedWindow != 0 && g.FocusedWindow->Active && IsKeyPressedMap(ImGuiKey_Tab, false))
        g.FocusedWindow->FocusIdxTabRequestNext = 0;

    
    for (int i = 0; i != g.Windows.Size; i++)
    {
        ImGuiWindow* window = g.Windows[i];
        window->WasActive = window->Active;
        window->Active = false;
        window->Accessed = false;
    }

    
    if (g.FocusedWindow && !g.FocusedWindow->WasActive)
        for (int i = g.Windows.Size-1; i >= 0; i--)
            if (g.Windows[i]->WasActive && !(g.Windows[i]->Flags & ImGuiWindowFlags_ChildWindow))
            {
                FocusWindow(g.Windows[i]);
                break;
            }

    
    
    g.CurrentWindowStack.resize(0);
    g.CurrentPopupStack.resize(0);
    CloseInactivePopups();

    
    ImGui::SetNextWindowSize(ImVec2(400,400), ImGuiSetCond_FirstUseEver);
    ImGui::Begin("Debug");
}


void ImGui::Shutdown()
{
    ImGuiContext& g = *GImGui;

    
    if (g.IO.Fonts) 
        g.IO.Fonts->Clear();

    
    if (!g.Initialized)
        return;

    SaveIniSettingsToDisk(g.IO.IniFilename);

    for (int i = 0; i < g.Windows.Size; i++)
    {
        g.Windows[i]->~ImGuiWindow();
        ImGui::MemFree(g.Windows[i]);
    }
    g.Windows.clear();
    g.WindowsSortBuffer.clear();
    g.CurrentWindow = 0;
    g.CurrentWindowStack.clear();
    g.FocusedWindow = 0;
    g.HoveredWindow = 0;
    g.HoveredRootWindow = 0;
    g.ActiveIdWindow = 0;
    g.MovedWindow = 0;
    for (int i = 0; i < g.Settings.Size; i++)
        ImGui::MemFree(g.Settings[i].Name);
    g.Settings.clear();
    g.ColorModifiers.clear();
    g.StyleModifiers.clear();
    g.FontStack.clear();
    g.OpenPopupStack.clear();
    g.CurrentPopupStack.clear();
    g.SetNextWindowSizeConstraintCallback = 0;
    g.SetNextWindowSizeConstraintCallbackUserData = 0;
    for (int i = 0; i < ((int)(sizeof(g.RenderDrawLists)/sizeof(*g.RenderDrawLists))); i++)
        g.RenderDrawLists[i].clear();
    g.OverlayDrawList.ClearFreeMemory();
    g.ColorEditModeStorage.Clear();
    if (g.PrivateClipboard)
    {
        ImGui::MemFree(g.PrivateClipboard);
        g.PrivateClipboard = 0;
    }
    g.InputTextState.Text.clear();
    g.InputTextState.InitialText.clear();
    g.InputTextState.TempTextBuffer.clear();

    if (g.LogFile && g.LogFile != (__acrt_iob_func(1)))
    {
        fclose(g.LogFile);
        g.LogFile = 0;
    }
    if (g.LogClipboard)
    {
        g.LogClipboard->~ImGuiTextBuffer();
        ImGui::MemFree(g.LogClipboard);
    }

    g.Initialized = false;
}

static ImGuiIniData* FindWindowSettings(const char* name)
{
    ImGuiContext& g = *GImGui;
    ImGuiID id = ImHash(name, 0);
    for (int i = 0; i != g.Settings.Size; i++)
    {
        ImGuiIniData* ini = &g.Settings[i];
        if (ini->Id == id)
            return ini;
    }
    return 0;
}

static ImGuiIniData* AddWindowSettings(const char* name)
{
    GImGui->Settings.resize(GImGui->Settings.Size + 1);
    ImGuiIniData* ini = &GImGui->Settings.back();
    ini->Name = ImStrdup(name);
    ini->Id = ImHash(name, 0);
    ini->Collapsed = false;
    ini->Pos = ImVec2(3.402823466e+38F,3.402823466e+38F);
    ini->Size = ImVec2(0,0);
    return ini;
}



static void LoadIniSettingsFromDisk(const char* ini_filename)
{
    ImGuiContext& g = *GImGui;
    if (!ini_filename)
        return;

    int file_size;
    char* file_data = (char*)ImFileLoadToMemory(ini_filename, "rb", &file_size, 1);
    if (!file_data)
        return;

    ImGuiIniData* settings = 0;
    const char* buf_end = file_data + file_size;
    for (const char* line_start = file_data; line_start < buf_end; )
    {
        const char* line_end = line_start;
        while (line_end < buf_end && *line_end != '\n' && *line_end != '\r')
            line_end++;

        if (line_start[0] == '[' && line_end > line_start && line_end[-1] == ']')
        {
            char name[64];
            ImFormatString(name, ((int)(sizeof(name)/sizeof(*name))), "%.*s", (int)(line_end-line_start-2), line_start+1);
            settings = FindWindowSettings(name);
            if (!settings)
                settings = AddWindowSettings(name);
        }
        else if (settings)
        {
            float x, y;
            int i;
            if (sscanf(line_start, "Pos=%f,%f", &x, &y) == 2)
                settings->Pos = ImVec2(x, y);
            else if (sscanf(line_start, "Size=%f,%f", &x, &y) == 2)
                settings->Size = ImMax(ImVec2(x, y), g.Style.WindowMinSize);
            else if (sscanf(line_start, "Collapsed=%d", &i) == 1)
                settings->Collapsed = (i != 0);
        }

        line_start = line_end+1;
    }

    ImGui::MemFree(file_data);
}

static void SaveIniSettingsToDisk(const char* ini_filename)
{
    ImGuiContext& g = *GImGui;
    g.SettingsDirtyTimer = 0.0f;
    if (!ini_filename)
        return;

    
    for (int i = 0; i != g.Windows.Size; i++)
    {
        ImGuiWindow* window = g.Windows[i];
        if (window->Flags & ImGuiWindowFlags_NoSavedSettings)
            continue;
        ImGuiIniData* settings = FindWindowSettings(window->Name);
        settings->Pos = window->Pos;
        settings->Size = window->SizeFull;
        settings->Collapsed = window->Collapsed;
    }

    
    
    FILE* f = ImFileOpen(ini_filename, "wt");
    if (!f)
        return;
    for (int i = 0; i != g.Settings.Size; i++)
    {
        const ImGuiIniData* settings = &g.Settings[i];
        if (settings->Pos.x == 3.402823466e+38F)
            continue;
        const char* name = settings->Name;
        if (const char* p = strstr(name, "###"))  
            name = p;
        fprintf(f, "[%s]\n", name);
        fprintf(f, "Pos=%d,%d\n", (int)settings->Pos.x, (int)settings->Pos.y);
        fprintf(f, "Size=%d,%d\n", (int)settings->Size.x, (int)settings->Size.y);
        fprintf(f, "Collapsed=%d\n", settings->Collapsed);
        fprintf(f, "\n");
    }

    fclose(f);
}

static void MarkIniSettingsDirty()
{
    ImGuiContext& g = *GImGui;
    if (g.SettingsDirtyTimer <= 0.0f)
        g.SettingsDirtyTimer = g.IO.IniSavingRate;
}


static int ChildWindowComparer(const void* lhs, const void* rhs)
{
    const ImGuiWindow* a = *(const ImGuiWindow**)lhs;
    const ImGuiWindow* b = *(const ImGuiWindow**)rhs;
    if (int d = (a->Flags & ImGuiWindowFlags_Popup) - (b->Flags & ImGuiWindowFlags_Popup))
        return d;
    if (int d = (a->Flags & ImGuiWindowFlags_Tooltip) - (b->Flags & ImGuiWindowFlags_Tooltip))
        return d;
    if (int d = (a->Flags & ImGuiWindowFlags_ComboBox) - (b->Flags & ImGuiWindowFlags_ComboBox))
        return d;
    return (a->IndexWithinParent - b->IndexWithinParent);
}

static void AddWindowToSortedBuffer(ImVector<ImGuiWindow*>& out_sorted_windows, ImGuiWindow* window)
{
    out_sorted_windows.push_back(window);
    if (window->Active)
    {
        int count = window->DC.ChildWindows.Size;
        if (count > 1)
            qsort(window->DC.ChildWindows.begin(), (size_t)count, sizeof(ImGuiWindow*), ChildWindowComparer);
        for (int i = 0; i < count; i++)
        {
            ImGuiWindow* child = window->DC.ChildWindows[i];
            if (child->Active)
                AddWindowToSortedBuffer(out_sorted_windows, child);
        }
    }
}

static void AddDrawListToRenderList(ImVector<ImDrawList*>& out_render_list, ImDrawList* draw_list)
{
    if (draw_list->CmdBuffer.empty())
        return;

    
    ImDrawCmd& last_cmd = draw_list->CmdBuffer.back();
    if (last_cmd.ElemCount == 0 && last_cmd.UserCallback == 0)
    {
        draw_list->CmdBuffer.pop_back();
        if (draw_list->CmdBuffer.empty())
            return;
    }

    
    (void)( (!!(draw_list->VtxBuffer.Size == 0 || draw_list->_VtxWritePtr == draw_list->VtxBuffer.Data + draw_list->VtxBuffer.Size)) || (_wassert(L"draw_list->VtxBuffer.Size == 0 || draw_list->_VtxWritePtr == draw_list->VtxBuffer.Data + draw_list->VtxBuffer.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2600)), 0) );
    (void)( (!!(draw_list->IdxBuffer.Size == 0 || draw_list->_IdxWritePtr == draw_list->IdxBuffer.Data + draw_list->IdxBuffer.Size)) || (_wassert(L"draw_list->IdxBuffer.Size == 0 || draw_list->_IdxWritePtr == draw_list->IdxBuffer.Data + draw_list->IdxBuffer.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2601)), 0) );
    (void)( (!!((int)draw_list->_VtxCurrentIdx == draw_list->VtxBuffer.Size)) || (_wassert(L"(int)draw_list->_VtxCurrentIdx == draw_list->VtxBuffer.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2602)), 0) );

    
    
    (void)( (!!((int64_t)draw_list->_VtxCurrentIdx <= ((int64_t)1L << (sizeof(ImDrawIdx)*8)))) || (_wassert(L"(int64_t)draw_list->_VtxCurrentIdx <= ((int64_t)1L << (sizeof(ImDrawIdx)*8))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2606)), 0) );  
    
    out_render_list.push_back(draw_list);
    GImGui->IO.MetricsRenderVertices += draw_list->VtxBuffer.Size;
    GImGui->IO.MetricsRenderIndices += draw_list->IdxBuffer.Size;
}

static void AddWindowToRenderList(ImVector<ImDrawList*>& out_render_list, ImGuiWindow* window)
{
    AddDrawListToRenderList(out_render_list, window->DrawList);
    for (int i = 0; i < window->DC.ChildWindows.Size; i++)
    {
        ImGuiWindow* child = window->DC.ChildWindows[i];
        if (!child->Active) 
            continue;
        if ((child->Flags & ImGuiWindowFlags_Popup) && child->HiddenFrames > 0)
            continue;
        AddWindowToRenderList(out_render_list, child);
    }
}


void ImGui::PushClipRect(const ImVec2& clip_rect_min, const ImVec2& clip_rect_max, bool intersect_with_current_clip_rect)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DrawList->PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect);
    window->ClipRect = window->DrawList->_ClipRectStack.back();
}

void ImGui::PopClipRect()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DrawList->PopClipRect();
    window->ClipRect = window->DrawList->_ClipRectStack.back();
}


void ImGui::EndFrame()
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(g.Initialized)) || (_wassert(L"g.Initialized", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2646)), 0) );                       
    (void)( (!!(g.FrameCountEnded != g.FrameCount)) || (_wassert(L"g.FrameCountEnded != g.FrameCount", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2647)), 0) );   

    
    if (g.Tooltip[0])
    {
        ImGui::BeginTooltip();
        ImGui::TextUnformatted(g.Tooltip);
        ImGui::EndTooltip();
    }

    
    if (g.IO.ImeSetInputScreenPosFn && ImLengthSqr(g.OsImePosRequest - g.OsImePosSet) > 0.0001f)
    {
        g.IO.ImeSetInputScreenPosFn((int)g.OsImePosRequest.x, (int)g.OsImePosRequest.y);
        g.OsImePosSet = g.OsImePosRequest;
    }

    
    (void)( (!!(g.CurrentWindowStack.Size == 1)) || (_wassert(L"g.CurrentWindowStack.Size == 1", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2665)), 0) );    
    if (g.CurrentWindow && !g.CurrentWindow->Accessed)
        g.CurrentWindow->Active = false;
    ImGui::End();

    
    if (g.ActiveId == 0 && g.HoveredId == 0 && g.IO.MouseClicked[0])
    {
        if (!(g.FocusedWindow && !g.FocusedWindow->WasActive && g.FocusedWindow->Active)) 
        {
            if (g.HoveredRootWindow != 0)
            {
                FocusWindow(g.HoveredWindow);
                if (!(g.HoveredWindow->Flags & ImGuiWindowFlags_NoMove))
                {
                    g.MovedWindow = g.HoveredWindow;
                    g.MovedWindowMoveId = g.HoveredRootWindow->MoveId;
                    SetActiveID(g.MovedWindowMoveId, g.HoveredRootWindow);
                }
            }
            else if (g.FocusedWindow != 0 && GetFrontMostModalRootWindow() == 0)
            {
                
                FocusWindow(0);
            }
        }
    }

    
    
    g.WindowsSortBuffer.resize(0);
    g.WindowsSortBuffer.reserve(g.Windows.Size);
    for (int i = 0; i != g.Windows.Size; i++)
    {
        ImGuiWindow* window = g.Windows[i];
        if (window->Active && (window->Flags & ImGuiWindowFlags_ChildWindow))       
            continue;
        AddWindowToSortedBuffer(g.WindowsSortBuffer, window);
    }
    (void)( (!!(g.Windows.Size == g.WindowsSortBuffer.Size)) || (_wassert(L"g.Windows.Size == g.WindowsSortBuffer.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2704)), 0) );  
    g.Windows.swap(g.WindowsSortBuffer);

    
    g.IO.MouseWheel = 0.0f;
    memset(g.IO.InputCharacters, 0, sizeof(g.IO.InputCharacters));

    g.FrameCountEnded = g.FrameCount;
}

void ImGui::Render()
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(g.Initialized)) || (_wassert(L"g.Initialized", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(2717)), 0) );   

    if (g.FrameCountEnded != g.FrameCount)
        ImGui::EndFrame();
    g.FrameCountRendered = g.FrameCount;

    
    
    if (g.Style.Alpha > 0.0f)
    {
        
        g.IO.MetricsRenderVertices = g.IO.MetricsRenderIndices = g.IO.MetricsActiveWindows = 0;
        for (int i = 0; i < ((int)(sizeof(g.RenderDrawLists)/sizeof(*g.RenderDrawLists))); i++)
            g.RenderDrawLists[i].resize(0);
        for (int i = 0; i != g.Windows.Size; i++)
        {
            ImGuiWindow* window = g.Windows[i];
            if (window->Active && window->HiddenFrames <= 0 && (window->Flags & (ImGuiWindowFlags_ChildWindow)) == 0)
            {
                
                g.IO.MetricsActiveWindows++;
                if (window->Flags & ImGuiWindowFlags_Popup)
                    AddWindowToRenderList(g.RenderDrawLists[1], window);
                else if (window->Flags & ImGuiWindowFlags_Tooltip)
                    AddWindowToRenderList(g.RenderDrawLists[2], window);
                else
                    AddWindowToRenderList(g.RenderDrawLists[0], window);
            }
        }

        
        int n = g.RenderDrawLists[0].Size;
        int flattened_size = n;
        for (int i = 1; i < ((int)(sizeof(g.RenderDrawLists)/sizeof(*g.RenderDrawLists))); i++)
            flattened_size += g.RenderDrawLists[i].Size;
        g.RenderDrawLists[0].resize(flattened_size);
        for (int i = 1; i < ((int)(sizeof(g.RenderDrawLists)/sizeof(*g.RenderDrawLists))); i++)
        {
            ImVector<ImDrawList*>& layer = g.RenderDrawLists[i];
            if (layer.empty())
                continue;
            memcpy(&g.RenderDrawLists[0][n], &layer[0], layer.Size * sizeof(ImDrawList*));
            n += layer.Size;
        }

        
        if (g.IO.MouseDrawCursor)
        {
            const ImGuiMouseCursorData& cursor_data = g.MouseCursorData[g.MouseCursor];
            const ImVec2 pos = g.IO.MousePos - cursor_data.HotOffset;
            const ImVec2 size = cursor_data.Size;
            const ImTextureID tex_id = g.IO.Fonts->TexID;
            g.OverlayDrawList.PushTextureID(tex_id);
            g.OverlayDrawList.AddImage(tex_id, pos+ImVec2(1,0), pos+ImVec2(1,0) + size, cursor_data.TexUvMin[1], cursor_data.TexUvMax[1], (((ImU32)(48)<<24) | ((ImU32)(0)<<16) | ((ImU32)(0)<<8) | ((ImU32)(0)<<0)));        
            g.OverlayDrawList.AddImage(tex_id, pos+ImVec2(2,0), pos+ImVec2(2,0) + size, cursor_data.TexUvMin[1], cursor_data.TexUvMax[1], (((ImU32)(48)<<24) | ((ImU32)(0)<<16) | ((ImU32)(0)<<8) | ((ImU32)(0)<<0)));        
            g.OverlayDrawList.AddImage(tex_id, pos,             pos + size,             cursor_data.TexUvMin[1], cursor_data.TexUvMax[1], (((ImU32)(255)<<24) | ((ImU32)(0)<<16) | ((ImU32)(0)<<8) | ((ImU32)(0)<<0)));       
            g.OverlayDrawList.AddImage(tex_id, pos,             pos + size,             cursor_data.TexUvMin[0], cursor_data.TexUvMax[0], (((ImU32)(255)<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0))); 
            g.OverlayDrawList.PopTextureID();
        }
        if (!g.OverlayDrawList.VtxBuffer.empty())
            AddDrawListToRenderList(g.RenderDrawLists[0], &g.OverlayDrawList);

        
        g.RenderDrawData.Valid = true;
        g.RenderDrawData.CmdLists = (g.RenderDrawLists[0].Size > 0) ? &g.RenderDrawLists[0][0] : 0;
        g.RenderDrawData.CmdListsCount = g.RenderDrawLists[0].Size;
        g.RenderDrawData.TotalVtxCount = g.IO.MetricsRenderVertices;
        g.RenderDrawData.TotalIdxCount = g.IO.MetricsRenderIndices;

        
        if (g.RenderDrawData.CmdListsCount > 0 && g.IO.RenderDrawListsFn != 0)
            g.IO.RenderDrawListsFn(&g.RenderDrawData);
    }
}

const char* ImGui::FindRenderedTextEnd(const char* text, const char* text_end)
{
    const char* text_display_end = text;
    if (!text_end)
        text_end = (const char*)-1;

    while (text_display_end < text_end && *text_display_end != '\0' && (text_display_end[0] != '#' || text_display_end[1] != '#'))
        text_display_end++;
    return text_display_end;
}


void ImGui::LogText(const char* fmt, ...)
{
    ImGuiContext& g = *GImGui;
    if (!g.LogEnabled)
        return;

    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    if (g.LogFile)
    {
        vfprintf(g.LogFile, fmt, args);
    }
    else
    {
        g.LogClipboard->appendv(fmt, args);
    }
    ((void)(args = (va_list)0));
}



static void LogRenderedText(const ImVec2& ref_pos, const char* text, const char* text_end)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = ImGui::GetCurrentWindowRead();

    if (!text_end)
        text_end = ImGui::FindRenderedTextEnd(text, text_end);

    const bool log_new_line = ref_pos.y > window->DC.LogLinePosY+1;
    window->DC.LogLinePosY = ref_pos.y;

    const char* text_remaining = text;
    if (g.LogStartDepth > window->DC.TreeDepth)  
        g.LogStartDepth = window->DC.TreeDepth;
    const int tree_depth = (window->DC.TreeDepth - g.LogStartDepth);
    for (;;)
    {
        
        const char* line_end = text_remaining;
        while (line_end < text_end)
            if (*line_end == '\n')
                break;
            else
                line_end++;
        if (line_end >= text_end)
            line_end = 0;

        const bool is_first_line = (text == text_remaining);
        bool is_last_line = false;
        if (line_end == 0)
        {
            is_last_line = true;
            line_end = text_end;
        }
        if (line_end != 0 && !(is_last_line && (line_end - text_remaining)==0))
        {
            const int char_count = (int)(line_end - text_remaining);
            if (log_new_line || !is_first_line)
                ImGui::LogText("\r\n" "%*s%.*s", tree_depth*4, "", char_count, text_remaining);
            else
                ImGui::LogText(" %.*s", char_count, text_remaining);
        }

        if (is_last_line)
            break;
        text_remaining = line_end + 1;
    }
}



void ImGui::RenderText(ImVec2 pos, const char* text, const char* text_end, bool hide_text_after_hash)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    
    const char* text_display_end;
    if (hide_text_after_hash)
    {
        text_display_end = FindRenderedTextEnd(text, text_end);
    }
    else
    {
        if (!text_end)
            text_end = text + strlen(text); 
        text_display_end = text_end;
    }

    const int text_len = (int)(text_display_end - text);
    if (text_len > 0)
    {
        window->DrawList->AddText(g.Font, g.FontSize, pos, GetColorU32(ImGuiCol_Text), text, text_display_end);
        if (g.LogEnabled)
            LogRenderedText(pos, text, text_display_end);
    }
}

void ImGui::RenderTextWrapped(ImVec2 pos, const char* text, const char* text_end, float wrap_width)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    if (!text_end)
        text_end = text + strlen(text); 

    const int text_len = (int)(text_end - text);
    if (text_len > 0)
    {
        window->DrawList->AddText(g.Font, g.FontSize, pos, GetColorU32(ImGuiCol_Text), text, text_end, wrap_width);
        if (g.LogEnabled)
            LogRenderedText(pos, text, text_end);
    }
}



void ImGui::RenderTextClipped(const ImVec2& pos_min, const ImVec2& pos_max, const char* text, const char* text_end, const ImVec2* text_size_if_known, const ImVec2& align, const ImRect* clip_rect)
{
    
    const char* text_display_end = FindRenderedTextEnd(text, text_end);
    const int text_len = (int)(text_display_end - text);
    if (text_len == 0)
        return;

    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    
    ImVec2 pos = pos_min;
    const ImVec2 text_size = text_size_if_known ? *text_size_if_known : CalcTextSize(text, text_display_end, false, 0.0f);

    const ImVec2* clip_min = clip_rect ? &clip_rect->Min : &pos_min;
    const ImVec2* clip_max = clip_rect ? &clip_rect->Max : &pos_max;
    bool need_clipping = (pos.x + text_size.x >= clip_max->x) || (pos.y + text_size.y >= clip_max->y);
    if (clip_rect) 
        need_clipping |= (pos.x < clip_min->x) || (pos.y < clip_min->y);

    
    if (align.x > 0.0f) pos.x = ImMax(pos.x, pos.x + (pos_max.x - pos.x - text_size.x) * align.x);
    if (align.y > 0.0f) pos.y = ImMax(pos.y, pos.y + (pos_max.y - pos.y - text_size.y) * align.y);

    
    if (need_clipping)
    {
        ImVec4 fine_clip_rect(clip_min->x, clip_min->y, clip_max->x, clip_max->y);
        window->DrawList->AddText(g.Font, g.FontSize, pos, GetColorU32(ImGuiCol_Text), text, text_display_end, 0.0f, &fine_clip_rect);
    }
    else
    {
        window->DrawList->AddText(g.Font, g.FontSize, pos, GetColorU32(ImGuiCol_Text), text, text_display_end, 0.0f, 0);
    }
    if (g.LogEnabled)
        LogRenderedText(pos, text, text_display_end);
}


void ImGui::RenderFrame(ImVec2 p_min, ImVec2 p_max, ImU32 fill_col, bool border, float rounding)
{
    ImGuiWindow* window = GetCurrentWindow();

    window->DrawList->AddRectFilled(p_min, p_max, fill_col, rounding);
    if (border && (window->Flags & ImGuiWindowFlags_ShowBorders))
    {
        window->DrawList->AddRect(p_min+ImVec2(1,1), p_max+ImVec2(1,1), GetColorU32(ImGuiCol_BorderShadow), rounding);
        window->DrawList->AddRect(p_min, p_max, GetColorU32(ImGuiCol_Border), rounding);
    }
}


void ImGui::RenderCollapseTriangle(ImVec2 p_min, bool is_open, float scale)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    const float h = g.FontSize * 1.00f;
    const float r = h * 0.40f * scale;
    ImVec2 center = p_min + ImVec2(h*0.50f, h*0.50f*scale);

    ImVec2 a, b, c;
    if (is_open)
    {
        center.y -= r*0.25f;
        a = center + ImVec2(0,1)*r;
        b = center + ImVec2(-0.866f,-0.5f)*r;
        c = center + ImVec2(0.866f,-0.5f)*r;
    }
    else
    {
        a = center + ImVec2(1,0)*r;
        b = center + ImVec2(-0.500f,0.866f)*r;
        c = center + ImVec2(-0.500f,-0.866f)*r;
    }

    window->DrawList->AddTriangleFilled(a, b, c, GetColorU32(ImGuiCol_Text));
}

void ImGui::RenderBullet(ImVec2 pos)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DrawList->AddCircleFilled(pos, GImGui->FontSize*0.20f, GetColorU32(ImGuiCol_Text), 8);
}

void ImGui::RenderCheckMark(ImVec2 pos, ImU32 col)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    ImVec2 a, b, c;
    float start_x = (float)(int)(g.FontSize * 0.307f + 0.5f);
    float rem_third = (float)(int)((g.FontSize - start_x) / 3.0f);
    a.x = pos.x + 0.5f + start_x;
    b.x = a.x + rem_third;
    c.x = a.x + rem_third * 3.0f;
    b.y = pos.y - 1.0f + (float)(int)(g.Font->Ascent * (g.FontSize / g.Font->FontSize) + 0.5f) + (float)(int)(g.Font->DisplayOffset.y);
    a.y = b.y - rem_third;
    c.y = b.y - rem_third * 2.0f;

    window->DrawList->PathLineTo(a);
    window->DrawList->PathLineTo(b);
    window->DrawList->PathLineTo(c);
    window->DrawList->PathStroke(col, false);
}



ImVec2 ImGui::CalcTextSize(const char* text, const char* text_end, bool hide_text_after_double_hash, float wrap_width)
{
    ImGuiContext& g = *GImGui;

    const char* text_display_end;
    if (hide_text_after_double_hash)
        text_display_end = FindRenderedTextEnd(text, text_end);      
    else
        text_display_end = text_end;

    ImFont* font = g.Font;
    const float font_size = g.FontSize;
    if (text == text_display_end)
        return ImVec2(0.0f, font_size);
    ImVec2 text_size = font->CalcTextSizeA(font_size, 3.402823466e+38F, wrap_width, text, text_display_end, 0);

    
    const float font_scale = font_size / font->FontSize;
    const float character_spacing_x = 1.0f * font_scale;
    if (text_size.x > 0.0f)
        text_size.x -= character_spacing_x;
    text_size.x = (float)(int)(text_size.x + 0.95f);

    return text_size;
}




void ImGui::CalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindowRead();
    if (g.LogEnabled)
    {
        
        *out_items_display_start = 0;
        *out_items_display_end = items_count;
        return;
    }
    if (window->SkipItems)
    {
        *out_items_display_start = *out_items_display_end = 0;
        return;
    }

    const ImVec2 pos = window->DC.CursorPos;
    int start = (int)((window->ClipRect.Min.y - pos.y) / items_height);
    int end = (int)((window->ClipRect.Max.y - pos.y) / items_height);
    start = ImClamp(start, 0, items_count);
    end = ImClamp(end + 1, start, items_count);
    *out_items_display_start = start;
    *out_items_display_end = end;
}



static ImGuiWindow* FindHoveredWindow(ImVec2 pos, bool excluding_childs)
{
    ImGuiContext& g = *GImGui;
    for (int i = g.Windows.Size-1; i >= 0; i--)
    {
        ImGuiWindow* window = g.Windows[i];
        if (!window->Active)
            continue;
        if (window->Flags & ImGuiWindowFlags_NoInputs)
            continue;
        if (excluding_childs && (window->Flags & ImGuiWindowFlags_ChildWindow) != 0)
            continue;

        
        ImRect bb(window->WindowRectClipped.Min - g.Style.TouchExtraPadding, window->WindowRectClipped.Max + g.Style.TouchExtraPadding);
        if (bb.Contains(pos))
            return window;
    }
    return 0;
}




bool ImGui::IsMouseHoveringRect(const ImVec2& r_min, const ImVec2& r_max, bool clip)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindowRead();

    
    ImRect rect_clipped(r_min, r_max);
    if (clip)
        rect_clipped.Clip(window->ClipRect);

    
    const ImRect rect_for_touch(rect_clipped.Min - g.Style.TouchExtraPadding, rect_clipped.Max + g.Style.TouchExtraPadding);
    return rect_for_touch.Contains(g.IO.MousePos);
}

bool ImGui::IsMouseHoveringWindow()
{
    ImGuiContext& g = *GImGui;
    return g.HoveredWindow == g.CurrentWindow;
}

bool ImGui::IsMouseHoveringAnyWindow()
{
    ImGuiContext& g = *GImGui;
    return g.HoveredWindow != 0;
}

bool ImGui::IsPosHoveringAnyWindow(const ImVec2& pos)
{
    return FindHoveredWindow(pos, false) != 0;
}

static bool IsKeyPressedMap(ImGuiKey key, bool repeat)
{
    const int key_index = GImGui->IO.KeyMap[key];
    return ImGui::IsKeyPressed(key_index, repeat);
}

int ImGui::GetKeyIndex(ImGuiKey key)
{
    (void)( (!!(key >= 0 && key < ImGuiKey_COUNT)) || (_wassert(L"key >= 0 && key < ImGuiKey_COUNT", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3152)), 0) );
    return GImGui->IO.KeyMap[key];
}

bool ImGui::IsKeyDown(int key_index)
{
    if (key_index < 0) return false;
    (void)( (!!(key_index >= 0 && key_index < ((int)(sizeof(GImGui->IO.KeysDown)/sizeof(*GImGui->IO.KeysDown))))) || (_wassert(L"key_index >= 0 && key_index < ((int)(sizeof(GImGui->IO.KeysDown)/sizeof(*GImGui->IO.KeysDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3159)), 0) );
    return GImGui->IO.KeysDown[key_index];
}

bool ImGui::IsKeyPressed(int key_index, bool repeat)
{
    ImGuiContext& g = *GImGui;
    if (key_index < 0) return false;
    (void)( (!!(key_index >= 0 && key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown))))) || (_wassert(L"key_index >= 0 && key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3167)), 0) );
    const float t = g.IO.KeysDownDuration[key_index];
    if (t == 0.0f)
        return true;

    if (repeat && t > g.IO.KeyRepeatDelay)
    {
        float delay = g.IO.KeyRepeatDelay, rate = g.IO.KeyRepeatRate;
        if ((fmodf(t - delay, rate) > rate*0.5f) != (fmodf(t - delay - g.IO.DeltaTime, rate) > rate*0.5f))
            return true;
    }
    return false;
}

bool ImGui::IsKeyReleased(int key_index)
{
    ImGuiContext& g = *GImGui;
    if (key_index < 0) return false;
    (void)( (!!(key_index >= 0 && key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown))))) || (_wassert(L"key_index >= 0 && key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3185)), 0) );
    if (g.IO.KeysDownDurationPrev[key_index] >= 0.0f && !g.IO.KeysDown[key_index])
        return true;
    return false;
}

bool ImGui::IsMouseDown(int button)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3194)), 0) );
    return g.IO.MouseDown[button];
}

bool ImGui::IsMouseClicked(int button, bool repeat)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3201)), 0) );
    const float t = g.IO.MouseDownDuration[button];
    if (t == 0.0f)
        return true;

    if (repeat && t > g.IO.KeyRepeatDelay)
    {
        float delay = g.IO.KeyRepeatDelay, rate = g.IO.KeyRepeatRate;
        if ((fmodf(t - delay, rate) > rate*0.5f) != (fmodf(t - delay - g.IO.DeltaTime, rate) > rate*0.5f))
            return true;
    }

    return false;
}

bool ImGui::IsMouseReleased(int button)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3219)), 0) );
    return g.IO.MouseReleased[button];
}

bool ImGui::IsMouseDoubleClicked(int button)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3226)), 0) );
    return g.IO.MouseDoubleClicked[button];
}

bool ImGui::IsMouseDragging(int button, float lock_threshold)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3233)), 0) );
    if (!g.IO.MouseDown[button])
        return false;
    if (lock_threshold < 0.0f)
        lock_threshold = g.IO.MouseDragThreshold;
    return g.IO.MouseDragMaxDistanceSqr[button] >= lock_threshold * lock_threshold;
}

ImVec2 ImGui::GetMousePos()
{
    return GImGui->IO.MousePos;
}


ImVec2 ImGui::GetMousePosOnOpeningCurrentPopup()
{
    ImGuiContext& g = *GImGui;
    if (g.CurrentPopupStack.Size > 0)
        return g.OpenPopupStack[g.CurrentPopupStack.Size-1].MousePosOnOpen;
    return g.IO.MousePos;
}

ImVec2 ImGui::GetMouseDragDelta(int button, float lock_threshold)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3258)), 0) );
    if (lock_threshold < 0.0f)
        lock_threshold = g.IO.MouseDragThreshold;
    if (g.IO.MouseDown[button])
        if (g.IO.MouseDragMaxDistanceSqr[button] >= lock_threshold * lock_threshold)
            return g.IO.MousePos - g.IO.MouseClickedPos[button];     
    return ImVec2(0.0f, 0.0f);
}

void ImGui::ResetMouseDragDelta(int button)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown))))) || (_wassert(L"button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3270)), 0) );
    
    g.IO.MouseClickedPos[button] = g.IO.MousePos;
}

ImGuiMouseCursor ImGui::GetMouseCursor()
{
    return GImGui->MouseCursor;
}

void ImGui::SetMouseCursor(ImGuiMouseCursor cursor_type)
{
    GImGui->MouseCursor = cursor_type;
}

void ImGui::CaptureKeyboardFromApp(bool capture)
{
    GImGui->CaptureKeyboardNextFrame = capture ? 1 : 0;
}

void ImGui::CaptureMouseFromApp(bool capture)
{
    GImGui->CaptureMouseNextFrame = capture ? 1 : 0;
}

bool ImGui::IsItemHovered()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.LastItemHoveredAndUsable;
}

bool ImGui::IsItemHoveredRect()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.LastItemHoveredRect;
}

bool ImGui::IsItemActive()
{
    ImGuiContext& g = *GImGui;
    if (g.ActiveId)
    {
        ImGuiWindow* window = GetCurrentWindowRead();
        return g.ActiveId == window->DC.LastItemId;
    }
    return false;
}

bool ImGui::IsItemClicked(int mouse_button)
{
    return IsMouseClicked(mouse_button) && IsItemHovered();
}

bool ImGui::IsAnyItemHovered()
{
    return GImGui->HoveredId != 0 || GImGui->HoveredIdPreviousFrame != 0;
}

bool ImGui::IsAnyItemActive()
{
    return GImGui->ActiveId != 0;
}

bool ImGui::IsItemVisible()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    ImRect r(window->ClipRect);
    return r.Overlaps(window->DC.LastItemRect);
}


void ImGui::SetItemAllowOverlap()
{
    ImGuiContext& g = *GImGui;
    if (g.HoveredId == g.CurrentWindow->DC.LastItemId)
        g.HoveredIdAllowOverlap = true;
    if (g.ActiveId == g.CurrentWindow->DC.LastItemId)
        g.ActiveIdAllowOverlap = true;
}

ImVec2 ImGui::GetItemRectMin()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.LastItemRect.Min;
}

ImVec2 ImGui::GetItemRectMax()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.LastItemRect.Max;
}

ImVec2 ImGui::GetItemRectSize()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.LastItemRect.GetSize();
}

ImVec2 ImGui::CalcItemRectClosestPoint(const ImVec2& pos, bool on_edge, float outward)
{
    ImGuiWindow* window = GetCurrentWindowRead();
    ImRect rect = window->DC.LastItemRect;
    rect.Expand(outward);
    return rect.GetClosestPoint(pos, on_edge);
}


void ImGui::SetTooltipV(const char* fmt, va_list args)
{
    ImGuiContext& g = *GImGui;
    ImFormatStringV(g.Tooltip, ((int)(sizeof(g.Tooltip)/sizeof(*g.Tooltip))), fmt, args);
}

void ImGui::SetTooltip(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    SetTooltipV(fmt, args);
    ((void)(args = (va_list)0));
}

static ImRect GetVisibleRect()
{
    ImGuiContext& g = *GImGui;
    if (g.IO.DisplayVisibleMin.x != g.IO.DisplayVisibleMax.x && g.IO.DisplayVisibleMin.y != g.IO.DisplayVisibleMax.y)
        return ImRect(g.IO.DisplayVisibleMin, g.IO.DisplayVisibleMax);
    return ImRect(0.0f, 0.0f, g.IO.DisplaySize.x, g.IO.DisplaySize.y);
}

void ImGui::BeginTooltip()
{
    ImGuiWindowFlags flags = ImGuiWindowFlags_Tooltip|ImGuiWindowFlags_NoTitleBar|ImGuiWindowFlags_NoMove|ImGuiWindowFlags_NoResize|ImGuiWindowFlags_NoSavedSettings|ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("##Tooltip", 0, flags);
}

void ImGui::EndTooltip()
{
    (void)( (!!(GetCurrentWindowRead()->Flags & ImGuiWindowFlags_Tooltip)) || (_wassert(L"GetCurrentWindowRead()->Flags & ImGuiWindowFlags_Tooltip", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3407)), 0) );   
    ImGui::End();
}

static bool IsPopupOpen(ImGuiID id)
{
    ImGuiContext& g = *GImGui;
    return g.OpenPopupStack.Size > g.CurrentPopupStack.Size && g.OpenPopupStack[g.CurrentPopupStack.Size].PopupId == id;
}





void ImGui::OpenPopupEx(const char* str_id, bool reopen_existing)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;
    ImGuiID id = window->GetID(str_id);
    int current_stack_size = g.CurrentPopupStack.Size;
    ImGuiPopupRef popup_ref = ImGuiPopupRef(id, window, window->GetID("##menus"), g.IO.MousePos); 
    if (g.OpenPopupStack.Size < current_stack_size + 1)
        g.OpenPopupStack.push_back(popup_ref);
    else if (reopen_existing || g.OpenPopupStack[current_stack_size].PopupId != id)
    {
        g.OpenPopupStack.resize(current_stack_size+1);
        g.OpenPopupStack[current_stack_size] = popup_ref;
    }
}

void ImGui::OpenPopup(const char* str_id)
{
    ImGui::OpenPopupEx(str_id, false);
}

static void CloseInactivePopups()
{
    ImGuiContext& g = *GImGui;
    if (g.OpenPopupStack.empty())
        return;

    
    
    int n = 0;
    if (g.FocusedWindow)
    {
        for (n = 0; n < g.OpenPopupStack.Size; n++)
        {
            ImGuiPopupRef& popup = g.OpenPopupStack[n];
            if (!popup.Window)
                continue;
            (void)( (!!((popup.Window->Flags & ImGuiWindowFlags_Popup) != 0)) || (_wassert(L"(popup.Window->Flags & ImGuiWindowFlags_Popup) != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3458)), 0) );
            if (popup.Window->Flags & ImGuiWindowFlags_ChildWindow)
                continue;

            bool has_focus = false;
            for (int m = n; m < g.OpenPopupStack.Size && !has_focus; m++)
                has_focus = (g.OpenPopupStack[m].Window && g.OpenPopupStack[m].Window->RootWindow == g.FocusedWindow->RootWindow);
            if (!has_focus)
                break;
        }
    }
    if (n < g.OpenPopupStack.Size)   
        g.OpenPopupStack.resize(n);
}

static ImGuiWindow* GetFrontMostModalRootWindow()
{
    ImGuiContext& g = *GImGui;
    for (int n = g.OpenPopupStack.Size-1; n >= 0; n--)
        if (ImGuiWindow* front_most_popup = g.OpenPopupStack.Data[n].Window)
            if (front_most_popup->Flags & ImGuiWindowFlags_Modal)
                return front_most_popup;
    return 0;
}

static void ClosePopupToLevel(int remaining)
{
    ImGuiContext& g = *GImGui;
    if (remaining > 0)
        ImGui::FocusWindow(g.OpenPopupStack[remaining-1].Window);
    else
        ImGui::FocusWindow(g.OpenPopupStack[0].ParentWindow);
    g.OpenPopupStack.resize(remaining);
}

static void ClosePopup(ImGuiID id)
{
    if (!IsPopupOpen(id))
        return;
    ImGuiContext& g = *GImGui;
    ClosePopupToLevel(g.OpenPopupStack.Size - 1);
}


void ImGui::CloseCurrentPopup()
{
    ImGuiContext& g = *GImGui;
    int popup_idx = g.CurrentPopupStack.Size - 1;
    if (popup_idx < 0 || popup_idx > g.OpenPopupStack.Size || g.CurrentPopupStack[popup_idx].PopupId != g.OpenPopupStack[popup_idx].PopupId)
        return;
    while (popup_idx > 0 && g.OpenPopupStack[popup_idx].Window && (g.OpenPopupStack[popup_idx].Window->Flags & ImGuiWindowFlags_ChildMenu))
        popup_idx--;
    ClosePopupToLevel(popup_idx);
}

static inline void ClearSetNextWindowData()
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowPosCond = g.SetNextWindowSizeCond = g.SetNextWindowContentSizeCond = g.SetNextWindowCollapsedCond = 0;
    g.SetNextWindowSizeConstraint = g.SetNextWindowFocus = false;
}

static bool BeginPopupEx(const char* str_id, ImGuiWindowFlags extra_flags)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;
    const ImGuiID id = window->GetID(str_id);
    if (!IsPopupOpen(id))
    {
        ClearSetNextWindowData(); 
        return false;
    }

    ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.0f);
    ImGuiWindowFlags flags = extra_flags|ImGuiWindowFlags_Popup|ImGuiWindowFlags_NoTitleBar|ImGuiWindowFlags_NoMove|ImGuiWindowFlags_NoResize|ImGuiWindowFlags_NoSavedSettings|ImGuiWindowFlags_AlwaysAutoResize;

    char name[20];
    if (flags & ImGuiWindowFlags_ChildMenu)
        ImFormatString(name, ((int)(sizeof(name)/sizeof(*name))), "##menu_%d", g.CurrentPopupStack.Size);    
    else
        ImFormatString(name, ((int)(sizeof(name)/sizeof(*name))), "##popup_%08x", id); 

    bool is_open = ImGui::Begin(name, 0, flags);
    if (!(window->Flags & ImGuiWindowFlags_ShowBorders))
        g.CurrentWindow->Flags &= ~ImGuiWindowFlags_ShowBorders;
    if (!is_open) 
        ImGui::EndPopup();

    return is_open;
}

bool ImGui::BeginPopup(const char* str_id)
{
    if (GImGui->OpenPopupStack.Size <= GImGui->CurrentPopupStack.Size)	
    {
        ClearSetNextWindowData(); 
        return false;
    }
    return BeginPopupEx(str_id, ImGuiWindowFlags_ShowBorders);
}

bool ImGui::BeginPopupModal(const char* name, bool* p_open, ImGuiWindowFlags extra_flags)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;
    const ImGuiID id = window->GetID(name);
    if (!IsPopupOpen(id))
    {
        ClearSetNextWindowData(); 
        return false;
    }

    ImGuiWindowFlags flags = extra_flags|ImGuiWindowFlags_Popup|ImGuiWindowFlags_Modal|ImGuiWindowFlags_NoCollapse|ImGuiWindowFlags_NoSavedSettings;
    bool is_open = ImGui::Begin(name, p_open, flags);
    if (!is_open || (p_open && !*p_open)) 
    {
        ImGui::EndPopup();
        if (is_open)
            ClosePopup(id);
        return false;
    }

    return is_open;
}

void ImGui::EndPopup()
{
    ImGuiWindow* window = GetCurrentWindow();
    (void)( (!!(window->Flags & ImGuiWindowFlags_Popup)) || (_wassert(L"window->Flags & ImGuiWindowFlags_Popup", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3586)), 0) );  
    (void)( (!!(GImGui->CurrentPopupStack.Size > 0)) || (_wassert(L"GImGui->CurrentPopupStack.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3587)), 0) );
    ImGui::End();
    if (!(window->Flags & ImGuiWindowFlags_Modal))
        ImGui::PopStyleVar();
}









bool ImGui::BeginPopupContextItem(const char* str_id, int mouse_button)
{
    if (IsItemHovered() && IsMouseClicked(mouse_button))
        OpenPopupEx(str_id, false);
    return BeginPopup(str_id);
}

bool ImGui::BeginPopupContextWindow(bool also_over_items, const char* str_id, int mouse_button)
{
    if (!str_id) str_id = "window_context_menu";
    if (IsMouseHoveringWindow() && IsMouseClicked(mouse_button))
        if (also_over_items || !IsAnyItemHovered())
            OpenPopupEx(str_id, true);
    return BeginPopup(str_id);
}

bool ImGui::BeginPopupContextVoid(const char* str_id, int mouse_button)
{
    if (!str_id) str_id = "void_context_menu";
    if (!IsMouseHoveringAnyWindow() && IsMouseClicked(mouse_button))
        OpenPopupEx(str_id, true);
    return BeginPopup(str_id);
}

static bool BeginChildEx(const char* name, ImGuiID id, const ImVec2& size_arg, bool border, ImGuiWindowFlags extra_flags)
{
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    ImGuiWindowFlags flags = ImGuiWindowFlags_NoTitleBar|ImGuiWindowFlags_NoResize|ImGuiWindowFlags_NoSavedSettings|ImGuiWindowFlags_ChildWindow;

    const ImVec2 content_avail = ImGui::GetContentRegionAvail();
    ImVec2 size = ImFloor(size_arg);
    if (size.x <= 0.0f)
    {
        if (size.x == 0.0f)
            flags |= ImGuiWindowFlags_ChildWindowAutoFitX;
        size.x = ImMax(content_avail.x, 4.0f) - fabsf(size.x); 
    }
    if (size.y <= 0.0f)
    {
        if (size.y == 0.0f)
            flags |= ImGuiWindowFlags_ChildWindowAutoFitY;
        size.y = ImMax(content_avail.y, 4.0f) - fabsf(size.y);
    }
    if (border)
        flags |= ImGuiWindowFlags_ShowBorders;
    flags |= extra_flags;

    char title[256];
    if (name)
        ImFormatString(title, ((int)(sizeof(title)/sizeof(*title))), "%s.%s.%08X", window->Name, name, id);
    else
        ImFormatString(title, ((int)(sizeof(title)/sizeof(*title))), "%s.%08X", window->Name, id);

    bool ret = ImGui::Begin(title, 0, size, -1.0f, flags);

    if (!(window->Flags & ImGuiWindowFlags_ShowBorders))
        ImGui::GetCurrentWindow()->Flags &= ~ImGuiWindowFlags_ShowBorders;

    return ret;
}

bool ImGui::BeginChild(const char* str_id, const ImVec2& size_arg, bool border, ImGuiWindowFlags extra_flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    return BeginChildEx(str_id, window->GetID(str_id), size_arg, border, extra_flags);
}

bool ImGui::BeginChild(ImGuiID id, const ImVec2& size_arg, bool border, ImGuiWindowFlags extra_flags)
{
    return BeginChildEx(0, id, size_arg, border, extra_flags);
}

void ImGui::EndChild()
{
    ImGuiWindow* window = GetCurrentWindow();

    (void)( (!!(window->Flags & ImGuiWindowFlags_ChildWindow)) || (_wassert(L"window->Flags & ImGuiWindowFlags_ChildWindow", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3677)), 0) );   
    if ((window->Flags & ImGuiWindowFlags_ComboBox) || window->BeginCount > 1)
    {
        ImGui::End();
    }
    else
    {
        
        ImVec2 sz = GetWindowSize();
        if (window->Flags & ImGuiWindowFlags_ChildWindowAutoFitX) 
            sz.x = ImMax(4.0f, sz.x);
        if (window->Flags & ImGuiWindowFlags_ChildWindowAutoFitY)
            sz.y = ImMax(4.0f, sz.y);

        ImGui::End();

        window = GetCurrentWindow();
        ImRect bb(window->DC.CursorPos, window->DC.CursorPos + sz);
        ItemSize(sz);
        ItemAdd(bb, 0);
    }
}


bool ImGui::BeginChildFrame(ImGuiID id, const ImVec2& size, ImGuiWindowFlags extra_flags)
{
    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    ImGui::PushStyleColor(ImGuiCol_ChildWindowBg, style.Colors[ImGuiCol_FrameBg]);
    ImGui::PushStyleVar(ImGuiStyleVar_ChildWindowRounding, style.FrameRounding);
    ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, style.FramePadding);
    return ImGui::BeginChild(id, size, (g.CurrentWindow->Flags & ImGuiWindowFlags_ShowBorders) ? true : false, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_AlwaysUseWindowPadding | extra_flags);
}

void ImGui::EndChildFrame()
{
    ImGui::EndChild();
    ImGui::PopStyleVar(2);
    ImGui::PopStyleColor();
}


static void CheckStacksSize(ImGuiWindow* window, bool write)
{
    
    ImGuiContext& g = *GImGui;
    int* p_backup = &window->DC.StackSizesBackup[0];
    { int current = window->IDStack.Size;       if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "PushID/PopID or TreeNode/TreePop Mismatch!")) || (_wassert(L"*p_backup == current && \"PushID/PopID or TreeNode/TreePop Mismatch!\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3724)), 0) );   p_backup++; }    
    { int current = window->DC.GroupStack.Size; if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "BeginGroup/EndGroup Mismatch!")) || (_wassert(L"*p_backup == current && \"BeginGroup/EndGroup Mismatch!\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3725)), 0) );                p_backup++; }    
    { int current = g.CurrentPopupStack.Size;   if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "BeginMenu/EndMenu or BeginPopup/EndPopup Mismatch")) || (_wassert(L"*p_backup == current && \"BeginMenu/EndMenu or BeginPopup/EndPopup Mismatch\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3726)), 0) ); p_backup++;}
    { int current = g.ColorModifiers.Size;      if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "PushStyleColor/PopStyleColor Mismatch!")) || (_wassert(L"*p_backup == current && \"PushStyleColor/PopStyleColor Mismatch!\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3727)), 0) );       p_backup++; }    
    { int current = g.StyleModifiers.Size;      if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "PushStyleVar/PopStyleVar Mismatch!")) || (_wassert(L"*p_backup == current && \"PushStyleVar/PopStyleVar Mismatch!\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3728)), 0) );           p_backup++; }    
    { int current = g.FontStack.Size;           if (write) *p_backup = current; else (void)( (!!(*p_backup == current && "PushFont/PopFont Mismatch!")) || (_wassert(L"*p_backup == current && \"PushFont/PopFont Mismatch!\"", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3729)), 0) );                   p_backup++; }    
    (void)( (!!(p_backup == window->DC.StackSizesBackup + ((int)(sizeof(window->DC.StackSizesBackup)/sizeof(*window->DC.StackSizesBackup))))) || (_wassert(L"p_backup == window->DC.StackSizesBackup + ((int)(sizeof(window->DC.StackSizesBackup)/sizeof(*window->DC.StackSizesBackup)))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3730)), 0) );
}

static ImVec2 FindBestPopupWindowPos(const ImVec2& base_pos, const ImVec2& size, int* last_dir, const ImRect& r_inner)
{
    const ImGuiStyle& style = GImGui->Style;

    
    ImVec2 safe_padding = style.DisplaySafeAreaPadding;
    ImRect r_outer(GetVisibleRect());
    r_outer.Reduce(ImVec2((size.x - r_outer.GetWidth() > safe_padding.x*2) ? safe_padding.x : 0.0f, (size.y - r_outer.GetHeight() > safe_padding.y*2) ? safe_padding.y : 0.0f));
    ImVec2 base_pos_clamped = ImClamp(base_pos, r_outer.Min, r_outer.Max - size);

    for (int n = (*last_dir != -1) ? -1 : 0; n < 4; n++)   
    {
        const int dir = (n == -1) ? *last_dir : n;
        ImRect rect(dir == 0 ? r_inner.Max.x : r_outer.Min.x, dir == 1 ? r_inner.Max.y : r_outer.Min.y, dir == 3 ? r_inner.Min.x : r_outer.Max.x, dir == 2 ? r_inner.Min.y : r_outer.Max.y);
        if (rect.GetWidth() < size.x || rect.GetHeight() < size.y)
            continue;
        *last_dir = dir;
        return ImVec2(dir == 0 ? r_inner.Max.x : dir == 3 ? r_inner.Min.x - size.x : base_pos_clamped.x, dir == 1 ? r_inner.Max.y : dir == 2 ? r_inner.Min.y - size.y : base_pos_clamped.y);
    }

    
    *last_dir = -1;
    ImVec2 pos = base_pos;
    pos.x = ImMax(ImMin(pos.x + size.x, r_outer.Max.x) - size.x, r_outer.Min.x);
    pos.y = ImMax(ImMin(pos.y + size.y, r_outer.Max.y) - size.y, r_outer.Min.y);
    return pos;
}

ImGuiWindow* ImGui::FindWindowByName(const char* name)
{
    
    ImGuiContext& g = *GImGui;
    ImGuiID id = ImHash(name, 0);
    for (int i = 0; i < g.Windows.Size; i++)
        if (g.Windows[i]->ID == id)
            return g.Windows[i];
    return 0;
}

static ImGuiWindow* CreateNewWindow(const char* name, ImVec2 size, ImGuiWindowFlags flags)
{
    ImGuiContext& g = *GImGui;

    
    ImGuiWindow* window = (ImGuiWindow*)ImGui::MemAlloc(sizeof(ImGuiWindow));
    new(ImPlacementNewDummy(), window) ImGuiWindow(name);
    window->Flags = flags;

    if (flags & ImGuiWindowFlags_NoSavedSettings)
    {
        
        window->Size = window->SizeFull = size;
    }
    else
    {
        
        
        window->PosFloat = ImVec2(60, 60);
        window->Pos = ImVec2((float)(int)window->PosFloat.x, (float)(int)window->PosFloat.y);

        ImGuiIniData* settings = FindWindowSettings(name);
        if (!settings)
        {
            settings = AddWindowSettings(name);
        }
        else
        {
            window->SetWindowPosAllowFlags &= ~ImGuiSetCond_FirstUseEver;
            window->SetWindowSizeAllowFlags &= ~ImGuiSetCond_FirstUseEver;
            window->SetWindowCollapsedAllowFlags &= ~ImGuiSetCond_FirstUseEver;
        }

        if (settings->Pos.x != 3.402823466e+38F)
        {
            window->PosFloat = settings->Pos;
            window->Pos = ImVec2((float)(int)window->PosFloat.x, (float)(int)window->PosFloat.y);
            window->Collapsed = settings->Collapsed;
        }

        if (ImLengthSqr(settings->Size) > 0.00001f && !(flags & ImGuiWindowFlags_NoResize))
            size = settings->Size;
        window->Size = window->SizeFull = size;
    }

    if ((flags & ImGuiWindowFlags_AlwaysAutoResize) != 0)
    {
        window->AutoFitFramesX = window->AutoFitFramesY = 2;
        window->AutoFitOnlyGrows = false;
    }
    else
    {
        if (window->Size.x <= 0.0f)
            window->AutoFitFramesX = 2;
        if (window->Size.y <= 0.0f)
            window->AutoFitFramesY = 2;
        window->AutoFitOnlyGrows = (window->AutoFitFramesX > 0) || (window->AutoFitFramesY > 0);
    }

    if (flags & ImGuiWindowFlags_NoBringToFrontOnFocus)
        g.Windows.insert(g.Windows.begin(), window); 
    else
        g.Windows.push_back(window);
    return window;
}

static void ApplySizeFullWithConstraint(ImGuiWindow* window, ImVec2 new_size)
{
    ImGuiContext& g = *GImGui;
    if (g.SetNextWindowSizeConstraint)
    {
        
        ImRect cr = g.SetNextWindowSizeConstraintRect;
        new_size.x = (cr.Min.x >= 0 && cr.Max.x >= 0) ? ImClamp(new_size.x, cr.Min.x, cr.Max.x) : window->SizeFull.x;
        new_size.y = (cr.Min.y >= 0 && cr.Max.y >= 0) ? ImClamp(new_size.y, cr.Min.y, cr.Max.y) : window->SizeFull.y;
        if (g.SetNextWindowSizeConstraintCallback)
        {
            ImGuiSizeConstraintCallbackData data;
            data.UserData = g.SetNextWindowSizeConstraintCallbackUserData;
            data.Pos = window->Pos;
            data.CurrentSize = window->SizeFull;
            data.DesiredSize = new_size;
            g.SetNextWindowSizeConstraintCallback(&data);
            new_size = data.DesiredSize;
        }
    }
    if (!(window->Flags & (ImGuiWindowFlags_ChildWindow | ImGuiWindowFlags_AlwaysAutoResize)))
        new_size = ImMax(new_size, g.Style.WindowMinSize);
    window->SizeFull = new_size;
}










bool ImGui::Begin(const char* name, bool* p_open, ImGuiWindowFlags flags)
{
    return ImGui::Begin(name, p_open, ImVec2(0.f, 0.f), -1.0f, flags);
}

bool ImGui::Begin(const char* name, bool* p_open, const ImVec2& size_on_first_use, float bg_alpha, ImGuiWindowFlags flags)
{
    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    (void)( (!!(name != 0)) || (_wassert(L"name != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3881)), 0) );                        
    (void)( (!!(g.Initialized)) || (_wassert(L"g.Initialized", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3882)), 0) );                       
    (void)( (!!(g.FrameCountEnded != g.FrameCount)) || (_wassert(L"g.FrameCountEnded != g.FrameCount", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3883)), 0) );   

    if (flags & ImGuiWindowFlags_NoInputs)
        flags |= ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize;

    
    bool window_is_new = false;
    ImGuiWindow* window = FindWindowByName(name);
    if (!window)
    {
        window = CreateNewWindow(name, size_on_first_use, flags);
        window_is_new = true;
    }

    const int current_frame = ImGui::GetFrameCount();
    const bool first_begin_of_the_frame = (window->LastFrameActive != current_frame);
    if (first_begin_of_the_frame)
        window->Flags = (ImGuiWindowFlags)flags;
    else
        flags = window->Flags;

    
    ImGuiWindow* parent_window = !g.CurrentWindowStack.empty() ? g.CurrentWindowStack.back() : 0;
    g.CurrentWindowStack.push_back(window);
    SetCurrentWindow(window);
    CheckStacksSize(window, true);
    (void)( (!!(parent_window != 0 || !(flags & ImGuiWindowFlags_ChildWindow))) || (_wassert(L"parent_window != 0 || !(flags & ImGuiWindowFlags_ChildWindow)", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(3909)), 0) );

    bool window_was_active = (window->LastFrameActive == current_frame - 1);   
    if (flags & ImGuiWindowFlags_Popup)
    {
        ImGuiPopupRef& popup_ref = g.OpenPopupStack[g.CurrentPopupStack.Size];
        window_was_active &= (window->PopupId == popup_ref.PopupId);
        window_was_active &= (window == popup_ref.Window);
        popup_ref.Window = window;
        g.CurrentPopupStack.push_back(popup_ref);
        window->PopupId = popup_ref.PopupId;
    }

    const bool window_appearing_after_being_hidden = (window->HiddenFrames == 1);

    
    bool window_pos_set_by_api = false, window_size_set_by_api = false;
    if (g.SetNextWindowPosCond)
    {
        const ImVec2 backup_cursor_pos = window->DC.CursorPos;                  
        if (!window_was_active || window_appearing_after_being_hidden) window->SetWindowPosAllowFlags |= ImGuiSetCond_Appearing;
        window_pos_set_by_api = (window->SetWindowPosAllowFlags & g.SetNextWindowPosCond) != 0;
        if (window_pos_set_by_api && ImLengthSqr(g.SetNextWindowPosVal - ImVec2(-3.402823466e+38F,-3.402823466e+38F)) < 0.001f)
        {
            window->SetWindowPosCenterWanted = true;                            
            window->SetWindowPosAllowFlags &= ~(ImGuiSetCond_Once | ImGuiSetCond_FirstUseEver | ImGuiSetCond_Appearing);
        }
        else
        {
            SetWindowPos(window, g.SetNextWindowPosVal, g.SetNextWindowPosCond);
        }
        window->DC.CursorPos = backup_cursor_pos;
        g.SetNextWindowPosCond = 0;
    }
    if (g.SetNextWindowSizeCond)
    {
        if (!window_was_active || window_appearing_after_being_hidden) window->SetWindowSizeAllowFlags |= ImGuiSetCond_Appearing;
        window_size_set_by_api = (window->SetWindowSizeAllowFlags & g.SetNextWindowSizeCond) != 0;
        SetWindowSize(window, g.SetNextWindowSizeVal, g.SetNextWindowSizeCond);
        g.SetNextWindowSizeCond = 0;
    }
    if (g.SetNextWindowContentSizeCond)
    {
        window->SizeContentsExplicit = g.SetNextWindowContentSizeVal;
        g.SetNextWindowContentSizeCond = 0;
    }
    else if (first_begin_of_the_frame)
    {
        window->SizeContentsExplicit = ImVec2(0.0f, 0.0f);
    }
    if (g.SetNextWindowCollapsedCond)
    {
        if (!window_was_active || window_appearing_after_being_hidden) window->SetWindowCollapsedAllowFlags |= ImGuiSetCond_Appearing;
        SetWindowCollapsed(window, g.SetNextWindowCollapsedVal, g.SetNextWindowCollapsedCond);
        g.SetNextWindowCollapsedCond = 0;
    }
    if (g.SetNextWindowFocus)
    {
        ImGui::SetWindowFocus();
        g.SetNextWindowFocus = false;
    }

    
    int root_idx, root_non_popup_idx;
    for (root_idx = g.CurrentWindowStack.Size - 1; root_idx > 0; root_idx--)
        if (!(g.CurrentWindowStack[root_idx]->Flags & ImGuiWindowFlags_ChildWindow))
            break;
    for (root_non_popup_idx = root_idx; root_non_popup_idx > 0; root_non_popup_idx--)
        if (!(g.CurrentWindowStack[root_non_popup_idx]->Flags & (ImGuiWindowFlags_ChildWindow | ImGuiWindowFlags_Popup)))
            break;
    window->ParentWindow = parent_window;
    window->RootWindow = g.CurrentWindowStack[root_idx];
    window->RootNonPopupWindow = g.CurrentWindowStack[root_non_popup_idx];      

    
    if (first_begin_of_the_frame)
    {
        window->Active = true;
        window->IndexWithinParent = 0;
        window->BeginCount = 0;
        window->ClipRect = ImVec4(-3.402823466e+38F,-3.402823466e+38F,+3.402823466e+38F,+3.402823466e+38F);
        window->LastFrameActive = current_frame;
        window->IDStack.resize(1);

        
        window->DrawList->Clear();
        window->DrawList->PushTextureID(g.Font->ContainerAtlas->TexID);
        ImRect fullscreen_rect(GetVisibleRect());
        if ((flags & ImGuiWindowFlags_ChildWindow) && !(flags & (ImGuiWindowFlags_ComboBox|ImGuiWindowFlags_Popup)))
            PushClipRect(parent_window->ClipRect.Min, parent_window->ClipRect.Max, true);
        else
            PushClipRect(fullscreen_rect.Min, fullscreen_rect.Max, true);

        if (!window_was_active)
        {
            
            window->AutoPosLastDirection = -1;
            if ((flags & ImGuiWindowFlags_Popup) != 0 && !window_pos_set_by_api)
                window->PosFloat = g.IO.MousePos;
        }

        
        
        if (!(flags & ImGuiWindowFlags_NoTitleBar) && !(flags & ImGuiWindowFlags_NoCollapse))
        {
            ImRect title_bar_rect = window->TitleBarRect();
            if (g.HoveredWindow == window && IsMouseHoveringRect(title_bar_rect.Min, title_bar_rect.Max) && g.IO.MouseDoubleClicked[0])
            {
                window->Collapsed = !window->Collapsed;
                if (!(flags & ImGuiWindowFlags_NoSavedSettings))
                    MarkIniSettingsDirty();
                FocusWindow(window);
            }
        }
        else
        {
            window->Collapsed = false;
        }

        

        
        window->SizeContents.x = (float)(int)((window->SizeContentsExplicit.x != 0.0f) ? window->SizeContentsExplicit.x : ((window_is_new ? 0.0f : window->DC.CursorMaxPos.x - window->Pos.x) + window->Scroll.x));
        window->SizeContents.y = (float)(int)((window->SizeContentsExplicit.y != 0.0f) ? window->SizeContentsExplicit.y : ((window_is_new ? 0.0f : window->DC.CursorMaxPos.y - window->Pos.y) + window->Scroll.y));

        
        if (window->HiddenFrames > 0)
            window->HiddenFrames--;
        if ((flags & (ImGuiWindowFlags_Popup | ImGuiWindowFlags_Tooltip)) != 0 && !window_was_active)
        {
            window->HiddenFrames = 1;
            if (flags & ImGuiWindowFlags_AlwaysAutoResize)
            {
                if (!window_size_set_by_api)
                    window->Size = window->SizeFull = ImVec2(0.f, 0.f);
                window->SizeContents = ImVec2(0.f, 0.f);
            }
        }

        
        window->WindowPadding = ((flags & ImGuiWindowFlags_ChildWindow) && !(flags & (ImGuiWindowFlags_AlwaysUseWindowPadding | ImGuiWindowFlags_ShowBorders | ImGuiWindowFlags_ComboBox | ImGuiWindowFlags_Popup))) ? ImVec2(0,0) : style.WindowPadding;

        
        ImVec2 size_auto_fit;
        if ((flags & ImGuiWindowFlags_Tooltip) != 0)
        {
            
            size_auto_fit = window->SizeContents + window->WindowPadding - ImVec2(0.0f, style.ItemSpacing.y);
        }
        else
        {
            size_auto_fit = ImClamp(window->SizeContents + window->WindowPadding, style.WindowMinSize, ImMax(style.WindowMinSize, g.IO.DisplaySize - g.Style.DisplaySafeAreaPadding));

            
            if (size_auto_fit.x < window->SizeContents.x && !(flags & ImGuiWindowFlags_NoScrollbar) && (flags & ImGuiWindowFlags_HorizontalScrollbar))
                size_auto_fit.y += style.ScrollbarSize;
            if (size_auto_fit.y < window->SizeContents.y && !(flags & ImGuiWindowFlags_NoScrollbar))
                size_auto_fit.x += style.ScrollbarSize;
            size_auto_fit.y = ImMax(size_auto_fit.y - style.ItemSpacing.y, 0.0f);
        }

        
        if (window->Collapsed)
        {
            
            
            if (window->AutoFitFramesX > 0)
                window->SizeFull.x = window->AutoFitOnlyGrows ? ImMax(window->SizeFull.x, size_auto_fit.x) : size_auto_fit.x;
            if (window->AutoFitFramesY > 0)
                window->SizeFull.y = window->AutoFitOnlyGrows ? ImMax(window->SizeFull.y, size_auto_fit.y) : size_auto_fit.y;
        }
        else
        {
            if ((flags & ImGuiWindowFlags_AlwaysAutoResize) && !window_size_set_by_api)
            {
                window->SizeFull = size_auto_fit;
            }
            else if ((window->AutoFitFramesX > 0 || window->AutoFitFramesY > 0) && !window_size_set_by_api)
            {
                
                if (window->AutoFitFramesX > 0)
                    window->SizeFull.x = window->AutoFitOnlyGrows ? ImMax(window->SizeFull.x, size_auto_fit.x) : size_auto_fit.x;
                if (window->AutoFitFramesY > 0)
                    window->SizeFull.y = window->AutoFitOnlyGrows ? ImMax(window->SizeFull.y, size_auto_fit.y) : size_auto_fit.y;
                if (!(flags & ImGuiWindowFlags_NoSavedSettings))
                    MarkIniSettingsDirty();
            }
        }

        
        ApplySizeFullWithConstraint(window, window->SizeFull);
        window->Size = window->Collapsed ? window->TitleBarRect().GetSize() : window->SizeFull;
        
        

        
        if (flags & ImGuiWindowFlags_ChildWindow)
        {
            window->IndexWithinParent = parent_window->DC.ChildWindows.Size;
            parent_window->DC.ChildWindows.push_back(window);
        }
        if ((flags & ImGuiWindowFlags_ChildWindow) && !(flags & ImGuiWindowFlags_Popup))
        {
            window->Pos = window->PosFloat = parent_window->DC.CursorPos;
            window->Size = window->SizeFull = size_on_first_use; 
        }

        bool window_pos_center = false;
        window_pos_center |= (window->SetWindowPosCenterWanted && window->HiddenFrames == 0);
        window_pos_center |= ((flags & ImGuiWindowFlags_Modal) && !window_pos_set_by_api && window_appearing_after_being_hidden);
        if (window_pos_center)
        {
            
            SetWindowPos(window, ImMax(style.DisplaySafeAreaPadding, fullscreen_rect.GetCenter() - window->SizeFull * 0.5f), 0);
        }
        else if (flags & ImGuiWindowFlags_ChildMenu)
        {
            
            
            (void)( (!!(window_pos_set_by_api)) || (_wassert(L"window_pos_set_by_api", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4128)), 0) );
            float horizontal_overlap = style.ItemSpacing.x; 
            ImRect rect_to_avoid;
            if (parent_window->DC.MenuBarAppending)
                rect_to_avoid = ImRect(-3.402823466e+38F, parent_window->Pos.y + parent_window->TitleBarHeight(), 3.402823466e+38F, parent_window->Pos.y + parent_window->TitleBarHeight() + parent_window->MenuBarHeight());
            else
                rect_to_avoid = ImRect(parent_window->Pos.x + horizontal_overlap, -3.402823466e+38F, parent_window->Pos.x + parent_window->Size.x - horizontal_overlap - parent_window->ScrollbarSizes.x, 3.402823466e+38F);
            window->PosFloat = FindBestPopupWindowPos(window->PosFloat, window->Size, &window->AutoPosLastDirection, rect_to_avoid);
        }
        else if ((flags & ImGuiWindowFlags_Popup) != 0 && !window_pos_set_by_api && window_appearing_after_being_hidden)
        {
            ImRect rect_to_avoid(window->PosFloat.x - 1, window->PosFloat.y - 1, window->PosFloat.x + 1, window->PosFloat.y + 1);
            window->PosFloat = FindBestPopupWindowPos(window->PosFloat, window->Size, &window->AutoPosLastDirection, rect_to_avoid);
        }

        
        if ((flags & ImGuiWindowFlags_Tooltip) != 0 && !window_pos_set_by_api)
        {
            ImRect rect_to_avoid(g.IO.MousePos.x - 16, g.IO.MousePos.y - 8, g.IO.MousePos.x + 24, g.IO.MousePos.y + 24); 
            window->PosFloat = FindBestPopupWindowPos(g.IO.MousePos, window->Size, &window->AutoPosLastDirection, rect_to_avoid);
            if (window->AutoPosLastDirection == -1)
                window->PosFloat = g.IO.MousePos + ImVec2(2,2); 
        }

        
        if (!(flags & ImGuiWindowFlags_ChildWindow) && !(flags & ImGuiWindowFlags_Tooltip))
        {
            if (!window_pos_set_by_api && window->AutoFitFramesX <= 0 && window->AutoFitFramesY <= 0 && g.IO.DisplaySize.x > 0.0f && g.IO.DisplaySize.y > 0.0f) 
            {
                ImVec2 padding = ImMax(style.DisplayWindowPadding, style.DisplaySafeAreaPadding);
                window->PosFloat = ImMax(window->PosFloat + window->Size, padding) - window->Size;
                window->PosFloat = ImMin(window->PosFloat, g.IO.DisplaySize - padding);
            }
        }
        window->Pos = ImVec2((float)(int)window->PosFloat.x, (float)(int)window->PosFloat.y);

        
        if (window->Size.x > 0.0f && !(flags & ImGuiWindowFlags_Tooltip) && !(flags & ImGuiWindowFlags_AlwaysAutoResize))
            window->ItemWidthDefault = (float)(int)(window->Size.x * 0.65f);
        else
            window->ItemWidthDefault = (float)(int)(g.FontSize * 16.0f);

        
        window->FocusIdxAllRequestCurrent = (window->FocusIdxAllRequestNext == 2147483647 || window->FocusIdxAllCounter == -1) ? 2147483647 : (window->FocusIdxAllRequestNext + (window->FocusIdxAllCounter+1)) % (window->FocusIdxAllCounter+1);
        window->FocusIdxTabRequestCurrent = (window->FocusIdxTabRequestNext == 2147483647 || window->FocusIdxTabCounter == -1) ? 2147483647 : (window->FocusIdxTabRequestNext + (window->FocusIdxTabCounter+1)) % (window->FocusIdxTabCounter+1);
        window->FocusIdxAllCounter = window->FocusIdxTabCounter = -1;
        window->FocusIdxAllRequestNext = window->FocusIdxTabRequestNext = 2147483647;

        
        if (window->ScrollTarget.x < 3.402823466e+38F)
        {
            window->Scroll.x = window->ScrollTarget.x;
            window->ScrollTarget.x = 3.402823466e+38F;
        }
        if (window->ScrollTarget.y < 3.402823466e+38F)
        {
            float center_ratio = window->ScrollTargetCenterRatio.y;
            window->Scroll.y = window->ScrollTarget.y - ((1.0f - center_ratio) * (window->TitleBarHeight() + window->MenuBarHeight())) - (center_ratio * window->SizeFull.y);
            window->ScrollTarget.y = 3.402823466e+38F;
        }
        window->Scroll = ImMax(window->Scroll, ImVec2(0.0f, 0.0f));
        if (!window->Collapsed && !window->SkipItems)
            window->Scroll = ImMin(window->Scroll, ImMax(ImVec2(0.0f, 0.0f), window->SizeContents - window->SizeFull + window->ScrollbarSizes));

        
        if ((flags & ImGuiWindowFlags_Modal) != 0 && window == GetFrontMostModalRootWindow())
            window->DrawList->AddRectFilled(fullscreen_rect.Min, fullscreen_rect.Max, GetColorU32(ImGuiCol_ModalWindowDarkening, g.ModalWindowDarkeningRatio));

        
        ImRect title_bar_rect = window->TitleBarRect();
        const float window_rounding = (flags & ImGuiWindowFlags_ChildWindow) ? style.ChildWindowRounding : style.WindowRounding;
        if (window->Collapsed)
        {
            
            RenderFrame(title_bar_rect.GetTL(), title_bar_rect.GetBR(),  GetColorU32(ImGuiCol_TitleBgCollapsed), true, window_rounding);
        }
        else
        {
            ImU32 resize_col = 0;
            const float resize_corner_size = ImMax(g.FontSize * 1.35f, window_rounding + 1.0f + g.FontSize * 0.2f);
            if (!(flags & ImGuiWindowFlags_AlwaysAutoResize) && window->AutoFitFramesX <= 0 && window->AutoFitFramesY <= 0 && !(flags & ImGuiWindowFlags_NoResize))
            {
                
                const ImVec2 br = window->Rect().GetBR();
                const ImRect resize_rect(br - ImVec2(resize_corner_size * 0.75f, resize_corner_size * 0.75f), br);
                const ImGuiID resize_id = window->GetID("#RESIZE");
                bool hovered, held;
                ButtonBehavior(resize_rect, resize_id, &hovered, &held, ImGuiButtonFlags_FlattenChilds);
                resize_col = GetColorU32(held ? ImGuiCol_ResizeGripActive : hovered ? ImGuiCol_ResizeGripHovered : ImGuiCol_ResizeGrip);

                if (hovered || held)
                    g.MouseCursor = ImGuiMouseCursor_ResizeNWSE;

                if (g.HoveredWindow == window && held && g.IO.MouseDoubleClicked[0])
                {
                    
                    ApplySizeFullWithConstraint(window, size_auto_fit);
                    if (!(flags & ImGuiWindowFlags_NoSavedSettings))
                        MarkIniSettingsDirty();
                    ClearActiveID();
                }
                else if (held)
                {
                    
                    ApplySizeFullWithConstraint(window, (g.IO.MousePos - g.ActiveIdClickOffset + resize_rect.GetSize()) - window->Pos);
                    if (!(flags & ImGuiWindowFlags_NoSavedSettings))
                        MarkIniSettingsDirty();
                }

                window->Size = window->SizeFull;
                title_bar_rect = window->TitleBarRect();
            }

            
            window->ScrollbarY = (flags & ImGuiWindowFlags_AlwaysVerticalScrollbar) || ((window->SizeContents.y > window->Size.y + style.ItemSpacing.y) && !(flags & ImGuiWindowFlags_NoScrollbar));
            window->ScrollbarX = (flags & ImGuiWindowFlags_AlwaysHorizontalScrollbar) || ((window->SizeContents.x > window->Size.x - (window->ScrollbarY ? style.ScrollbarSize : 0.0f) - window->WindowPadding.x) && !(flags & ImGuiWindowFlags_NoScrollbar) && (flags & ImGuiWindowFlags_HorizontalScrollbar));
            window->ScrollbarSizes = ImVec2(window->ScrollbarY ? style.ScrollbarSize : 0.0f, window->ScrollbarX ? style.ScrollbarSize : 0.0f);
            window->BorderSize = (flags & ImGuiWindowFlags_ShowBorders) ? 1.0f : 0.0f;

            
            ImGuiCol bg_color_idx = ImGuiCol_WindowBg;
            if ((flags & ImGuiWindowFlags_ComboBox) != 0)
                bg_color_idx = ImGuiCol_ComboBg;
            else if ((flags & ImGuiWindowFlags_Tooltip) != 0 || (flags & ImGuiWindowFlags_Popup) != 0)
                bg_color_idx = ImGuiCol_PopupBg;
            else if ((flags & ImGuiWindowFlags_ChildWindow) != 0)
                bg_color_idx = ImGuiCol_ChildWindowBg;
            ImVec4 bg_color = style.Colors[bg_color_idx];
            if (bg_alpha >= 0.0f)
                bg_color.w = bg_alpha;
            bg_color.w *= style.Alpha;
            if (bg_color.w > 0.0f)
                window->DrawList->AddRectFilled(window->Pos+ImVec2(0,window->TitleBarHeight()), window->Pos+window->Size, ColorConvertFloat4ToU32(bg_color), window_rounding, (flags & ImGuiWindowFlags_NoTitleBar) ? ImGuiCorner_All : ImGuiCorner_BottomLeft|ImGuiCorner_BottomRight);

            
            if (!(flags & ImGuiWindowFlags_NoTitleBar))
                window->DrawList->AddRectFilled(title_bar_rect.GetTL(), title_bar_rect.GetBR(), GetColorU32((g.FocusedWindow && window->RootNonPopupWindow == g.FocusedWindow->RootNonPopupWindow) ? ImGuiCol_TitleBgActive : ImGuiCol_TitleBg), window_rounding, ImGuiCorner_TopLeft|ImGuiCorner_TopRight);

            
            if (flags & ImGuiWindowFlags_MenuBar)
            {
                ImRect menu_bar_rect = window->MenuBarRect();
                if (flags & ImGuiWindowFlags_ShowBorders)
                    window->DrawList->AddLine(menu_bar_rect.GetBL(), menu_bar_rect.GetBR(), GetColorU32(ImGuiCol_Border));
                window->DrawList->AddRectFilled(menu_bar_rect.GetTL(), menu_bar_rect.GetBR(), GetColorU32(ImGuiCol_MenuBarBg), (flags & ImGuiWindowFlags_NoTitleBar) ? window_rounding : 0.0f, ImGuiCorner_TopLeft|ImGuiCorner_TopRight);
            }

            
            if (window->ScrollbarX)
                Scrollbar(window, true);
            if (window->ScrollbarY)
                Scrollbar(window, false);

            
            
            if (!(flags & ImGuiWindowFlags_NoResize))
            {
                const ImVec2 br = window->Rect().GetBR();
                window->DrawList->PathLineTo(br + ImVec2(-resize_corner_size, -window->BorderSize));
                window->DrawList->PathLineTo(br + ImVec2(-window->BorderSize, -resize_corner_size));
                window->DrawList->PathArcToFast(ImVec2(br.x - window_rounding - window->BorderSize, br.y - window_rounding - window->BorderSize), window_rounding, 0, 3);
                window->DrawList->PathFillConvex(resize_col);
            }

            
            if (flags & ImGuiWindowFlags_ShowBorders)
            {
                window->DrawList->AddRect(window->Pos+ImVec2(1,1), window->Pos+window->Size+ImVec2(1,1), GetColorU32(ImGuiCol_BorderShadow), window_rounding);
                window->DrawList->AddRect(window->Pos, window->Pos+window->Size, GetColorU32(ImGuiCol_Border), window_rounding);
                if (!(flags & ImGuiWindowFlags_NoTitleBar))
                    window->DrawList->AddLine(title_bar_rect.GetBL()+ImVec2(1,0), title_bar_rect.GetBR()-ImVec2(1,0), GetColorU32(ImGuiCol_Border));
            }
        }

        
        window->ContentsRegionRect.Min.x = -window->Scroll.x + window->WindowPadding.x;
        window->ContentsRegionRect.Min.y = -window->Scroll.y + window->WindowPadding.y + window->TitleBarHeight() + window->MenuBarHeight();
        window->ContentsRegionRect.Max.x = -window->Scroll.x - window->WindowPadding.x + (window->SizeContentsExplicit.x != 0.0f ? window->SizeContentsExplicit.x : (window->Size.x - window->ScrollbarSizes.x)); 
        window->ContentsRegionRect.Max.y = -window->Scroll.y - window->WindowPadding.y + (window->SizeContentsExplicit.y != 0.0f ? window->SizeContentsExplicit.y : (window->Size.y - window->ScrollbarSizes.y)); 

        
        window->DC.IndentX = 0.0f + window->WindowPadding.x - window->Scroll.x;
        window->DC.GroupOffsetX = 0.0f;
        window->DC.ColumnsOffsetX = 0.0f;
        window->DC.CursorStartPos = window->Pos + ImVec2(window->DC.IndentX + window->DC.ColumnsOffsetX, window->TitleBarHeight() + window->MenuBarHeight() + window->WindowPadding.y - window->Scroll.y);
        window->DC.CursorPos = window->DC.CursorStartPos;
        window->DC.CursorPosPrevLine = window->DC.CursorPos;
        window->DC.CursorMaxPos = window->DC.CursorStartPos;
        window->DC.CurrentLineHeight = window->DC.PrevLineHeight = 0.0f;
        window->DC.CurrentLineTextBaseOffset = window->DC.PrevLineTextBaseOffset = 0.0f;
        window->DC.MenuBarAppending = false;
        window->DC.MenuBarOffsetX = ImMax(window->WindowPadding.x, style.ItemSpacing.x);
        window->DC.LogLinePosY = window->DC.CursorPos.y - 9999.0f;
        window->DC.ChildWindows.resize(0);
        window->DC.LayoutType = ImGuiLayoutType_Vertical;
        window->DC.ItemWidth = window->ItemWidthDefault;
        window->DC.TextWrapPos = -1.0f; 
        window->DC.AllowKeyboardFocus = true;
        window->DC.ButtonRepeat = false;
        window->DC.ItemWidthStack.resize(0);
        window->DC.AllowKeyboardFocusStack.resize(0);
        window->DC.ButtonRepeatStack.resize(0);
        window->DC.TextWrapPosStack.resize(0);
        window->DC.ColumnsCurrent = 0;
        window->DC.ColumnsCount = 1;
        window->DC.ColumnsStartPosY = window->DC.CursorPos.y;
        window->DC.ColumnsCellMinY = window->DC.ColumnsCellMaxY = window->DC.ColumnsStartPosY;
        window->DC.TreeDepth = 0;
        window->DC.StateStorage = &window->StateStorage;
        window->DC.GroupStack.resize(0);
        window->DC.ColorEditMode = ImGuiColorEditMode_UserSelect;
        window->MenuColumns.Update(3, style.ItemSpacing.x, !window_was_active);

        if (window->AutoFitFramesX > 0)
            window->AutoFitFramesX--;
        if (window->AutoFitFramesY > 0)
            window->AutoFitFramesY--;

        
        if (!window_was_active && !(flags & ImGuiWindowFlags_NoFocusOnAppearing))
            if (!(flags & (ImGuiWindowFlags_ChildWindow|ImGuiWindowFlags_Tooltip)) || (flags & ImGuiWindowFlags_Popup))
                FocusWindow(window);

        
        if (!(flags & ImGuiWindowFlags_NoTitleBar))
        {
            if (p_open != 0)
            {
                const float pad = 2.0f;
                const float rad = (window->TitleBarHeight() - pad*2.0f) * 0.5f;
                if (CloseButton(window->GetID("#CLOSE"), window->Rect().GetTR() + ImVec2(-pad - rad, pad + rad), rad))
                    *p_open = false;
            }

            const ImVec2 text_size = CalcTextSize(name, 0, true);
            if (!(flags & ImGuiWindowFlags_NoCollapse))
                RenderCollapseTriangle(window->Pos + style.FramePadding, !window->Collapsed, 1.0f);

            ImVec2 text_min = window->Pos;
            ImVec2 text_max = window->Pos + ImVec2(window->Size.x, style.FramePadding.y*2 + text_size.y);
            ImRect clip_rect;
            clip_rect.Max = ImVec2(window->Pos.x + window->Size.x - (p_open ? title_bar_rect.GetHeight() - 3 : style.FramePadding.x), text_max.y); 
            float pad_left = (flags & ImGuiWindowFlags_NoCollapse) == 0 ? (style.FramePadding.x + g.FontSize + style.ItemInnerSpacing.x) : style.FramePadding.x;
            float pad_right = (p_open != 0) ? (style.FramePadding.x + g.FontSize + style.ItemInnerSpacing.x) : style.FramePadding.x;
            if (style.WindowTitleAlign.x > 0.0f) pad_right = ImLerp(pad_right, pad_left, style.WindowTitleAlign.x);
            text_min.x += pad_left;
            text_max.x -= pad_right;
            clip_rect.Min = ImVec2(text_min.x, window->Pos.y);
            RenderTextClipped(text_min, text_max, name, 0, &text_size, style.WindowTitleAlign, &clip_rect);
        }

        
        window->WindowRectClipped = window->Rect();
        window->WindowRectClipped.Clip(window->ClipRect);

        
        
        
        




    }

    
    
    
    const ImRect title_bar_rect = window->TitleBarRect();
    const float border_size = window->BorderSize;
    ImRect clip_rect; 
    clip_rect.Min.x = ImFloor(0.5f + title_bar_rect.Min.x + ImMax(border_size, ImFloor(window->WindowPadding.x*0.5f)));
    clip_rect.Min.y = ImFloor(0.5f + title_bar_rect.Max.y + window->MenuBarHeight() + border_size);
    clip_rect.Max.x = ImFloor(0.5f + window->Pos.x + window->Size.x - window->ScrollbarSizes.x - ImMax(border_size, ImFloor(window->WindowPadding.x*0.5f)));
    clip_rect.Max.y = ImFloor(0.5f + window->Pos.y + window->Size.y - window->ScrollbarSizes.y - border_size);
    PushClipRect(clip_rect.Min, clip_rect.Max, true);

    
    if (first_begin_of_the_frame)
        window->Accessed = false;
    window->BeginCount++;
    g.SetNextWindowSizeConstraint = false;

    
    
    if (flags & ImGuiWindowFlags_ChildWindow)
    {
        (void)( (!!((flags & ImGuiWindowFlags_NoTitleBar) != 0)) || (_wassert(L"(flags & ImGuiWindowFlags_NoTitleBar) != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4415)), 0) );
        window->Collapsed = parent_window && parent_window->Collapsed;

        if (!(flags & ImGuiWindowFlags_AlwaysAutoResize) && window->AutoFitFramesX <= 0 && window->AutoFitFramesY <= 0)
            window->Collapsed |= (window->WindowRectClipped.Min.x >= window->WindowRectClipped.Max.x || window->WindowRectClipped.Min.y >= window->WindowRectClipped.Max.y);

        
        
        if (window->Collapsed)
            window->Active = false;
    }
    if (style.Alpha <= 0.0f)
        window->Active = false;

    
    window->SkipItems = (window->Collapsed || !window->Active) && window->AutoFitFramesX <= 0 && window->AutoFitFramesY <= 0;
    return !window->SkipItems;
}

void ImGui::End()
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;

    if (window->DC.ColumnsCount != 1) 
        Columns(1, "#CLOSECOLUMNS");
    PopClipRect();   

    
    if (!(window->Flags & ImGuiWindowFlags_ChildWindow))    
        LogFinish();

    
    
    g.CurrentWindowStack.pop_back();
    if (window->Flags & ImGuiWindowFlags_Popup)
        g.CurrentPopupStack.pop_back();
    CheckStacksSize(window, false);
    SetCurrentWindow(g.CurrentWindowStack.empty() ? 0 : g.CurrentWindowStack.back());
}






static void Scrollbar(ImGuiWindow* window, bool horizontal)
{
    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(horizontal ? "#SCROLLX" : "#SCROLLY");

    
    bool other_scrollbar = (horizontal ? window->ScrollbarY : window->ScrollbarX);
    float other_scrollbar_size_w = other_scrollbar ? style.ScrollbarSize : 0.0f;
    const ImRect window_rect = window->Rect();
    const float border_size = window->BorderSize;
    ImRect bb = horizontal
        ? ImRect(window->Pos.x + border_size, window_rect.Max.y - style.ScrollbarSize, window_rect.Max.x - other_scrollbar_size_w - border_size, window_rect.Max.y - border_size)
        : ImRect(window_rect.Max.x - style.ScrollbarSize, window->Pos.y + border_size, window_rect.Max.x - border_size, window_rect.Max.y - other_scrollbar_size_w - border_size);
    if (!horizontal)
        bb.Min.y += window->TitleBarHeight() + ((window->Flags & ImGuiWindowFlags_MenuBar) ? window->MenuBarHeight() : 0.0f);
    if (bb.GetWidth() <= 0.0f || bb.GetHeight() <= 0.0f)
        return;

    float window_rounding = (window->Flags & ImGuiWindowFlags_ChildWindow) ? style.ChildWindowRounding : style.WindowRounding;
    int window_rounding_corners;
    if (horizontal)
        window_rounding_corners = ImGuiCorner_BottomLeft | (other_scrollbar ? 0 : ImGuiCorner_BottomRight);
    else
        window_rounding_corners = (((window->Flags & ImGuiWindowFlags_NoTitleBar) && !(window->Flags & ImGuiWindowFlags_MenuBar)) ? ImGuiCorner_TopRight : 0) | (other_scrollbar ? 0 : ImGuiCorner_BottomRight);
    window->DrawList->AddRectFilled(bb.Min, bb.Max, ImGui::GetColorU32(ImGuiCol_ScrollbarBg), window_rounding, window_rounding_corners);
    bb.Reduce(ImVec2(ImClamp((float)(int)((bb.Max.x - bb.Min.x - 2.0f) * 0.5f), 0.0f, 3.0f), ImClamp((float)(int)((bb.Max.y - bb.Min.y - 2.0f) * 0.5f), 0.0f, 3.0f)));

    
    float scrollbar_size_v = horizontal ? bb.GetWidth() : bb.GetHeight();
    float scroll_v = horizontal ? window->Scroll.x : window->Scroll.y;
    float win_size_avail_v = (horizontal ? window->Size.x : window->Size.y) - other_scrollbar_size_w;
    float win_size_contents_v = horizontal ? window->SizeContents.x : window->SizeContents.y;

    
    
    const float grab_h_pixels = ImMin(ImMax(scrollbar_size_v * ImSaturate(win_size_avail_v / ImMax(win_size_contents_v, win_size_avail_v)), style.GrabMinSize), scrollbar_size_v);
    const float grab_h_norm = grab_h_pixels / scrollbar_size_v;

    
    bool held = false;
    bool hovered = false;
    const bool previously_held = (g.ActiveId == id);
    ImGui::ButtonBehavior(bb, id, &hovered, &held);

    float scroll_max = ImMax(1.0f, win_size_contents_v - win_size_avail_v);
    float scroll_ratio = ImSaturate(scroll_v / scroll_max);
    float grab_v_norm = scroll_ratio * (scrollbar_size_v - grab_h_pixels) / scrollbar_size_v;
    if (held && grab_h_norm < 1.0f)
    {
        float scrollbar_pos_v = horizontal ? bb.Min.x : bb.Min.y;
        float mouse_pos_v = horizontal ? g.IO.MousePos.x : g.IO.MousePos.y;
        float* click_delta_to_grab_center_v = horizontal ? &g.ScrollbarClickDeltaToGrabCenter.x : &g.ScrollbarClickDeltaToGrabCenter.y;

        
        const float clicked_v_norm = ImSaturate((mouse_pos_v - scrollbar_pos_v) / scrollbar_size_v);
        ImGui::SetHoveredID(id);

        bool seek_absolute = false;
        if (!previously_held)
        {
            
            if (clicked_v_norm >= grab_v_norm && clicked_v_norm <= grab_v_norm + grab_h_norm)
            {
                *click_delta_to_grab_center_v = clicked_v_norm - grab_v_norm - grab_h_norm*0.5f;
            }
            else
            {
                seek_absolute = true;
                *click_delta_to_grab_center_v = 0.0f;
            }
        }

        
        
        const float scroll_v_norm = ImSaturate((clicked_v_norm - *click_delta_to_grab_center_v - grab_h_norm*0.5f) / (1.0f - grab_h_norm));
        scroll_v = (float)(int)(0.5f + scroll_v_norm * scroll_max);
        if (horizontal)
            window->Scroll.x = scroll_v;
        else
            window->Scroll.y = scroll_v;

        
        scroll_ratio = ImSaturate(scroll_v / scroll_max);
        grab_v_norm = scroll_ratio * (scrollbar_size_v - grab_h_pixels) / scrollbar_size_v;

        
        if (seek_absolute)
            *click_delta_to_grab_center_v = clicked_v_norm - grab_v_norm - grab_h_norm*0.5f;
    }

    
    const ImU32 grab_col = ImGui::GetColorU32(held ? ImGuiCol_ScrollbarGrabActive : hovered ? ImGuiCol_ScrollbarGrabHovered : ImGuiCol_ScrollbarGrab);
    if (horizontal)
        window->DrawList->AddRectFilled(ImVec2(ImLerp(bb.Min.x, bb.Max.x, grab_v_norm), bb.Min.y), ImVec2(ImLerp(bb.Min.x, bb.Max.x, grab_v_norm) + grab_h_pixels, bb.Max.y), grab_col, style.ScrollbarRounding);
    else
        window->DrawList->AddRectFilled(ImVec2(bb.Min.x, ImLerp(bb.Min.y, bb.Max.y, grab_v_norm)), ImVec2(bb.Max.x, ImLerp(bb.Min.y, bb.Max.y, grab_v_norm) + grab_h_pixels), grab_col, style.ScrollbarRounding);
}


void ImGui::FocusWindow(ImGuiWindow* window)
{
    ImGuiContext& g = *GImGui;

    
    g.FocusedWindow = window;

    
    if (!window)
        return;

    
    if (window->RootWindow)
        window = window->RootWindow;

    
    if (window->Flags & ImGuiWindowFlags_Popup) 
        if (g.ActiveId != 0 && g.ActiveIdWindow && g.ActiveIdWindow->RootWindow != window)
            ClearActiveID();

    
    if ((window->Flags & ImGuiWindowFlags_NoBringToFrontOnFocus) || g.Windows.back() == window)
        return;
    for (int i = 0; i < g.Windows.Size; i++)
        if (g.Windows[i] == window)
        {
            g.Windows.erase(g.Windows.begin() + i);
            break;
        }
    g.Windows.push_back(window);
}

void ImGui::PushItemWidth(float item_width)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.ItemWidth = (item_width == 0.0f ? window->ItemWidthDefault : item_width);
    window->DC.ItemWidthStack.push_back(window->DC.ItemWidth);
}

static void PushMultiItemsWidths(int components, float w_full)
{
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    const ImGuiStyle& style = GImGui->Style;
    if (w_full <= 0.0f)
        w_full = ImGui::CalcItemWidth();
    const float w_item_one  = ImMax(1.0f, (float)(int)((w_full - (style.ItemInnerSpacing.x) * (components-1)) / (float)components));
    const float w_item_last = ImMax(1.0f, (float)(int)(w_full - (w_item_one + style.ItemInnerSpacing.x) * (components-1)));
    window->DC.ItemWidthStack.push_back(w_item_last);
    for (int i = 0; i < components-1; i++)
        window->DC.ItemWidthStack.push_back(w_item_one);
    window->DC.ItemWidth = window->DC.ItemWidthStack.back();
}

void ImGui::PopItemWidth()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.ItemWidthStack.pop_back();
    window->DC.ItemWidth = window->DC.ItemWidthStack.empty() ? window->ItemWidthDefault : window->DC.ItemWidthStack.back();
}

float ImGui::CalcItemWidth()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    float w = window->DC.ItemWidth;
    if (w < 0.0f)
    {
        
        float width_to_right_edge = GetContentRegionAvail().x;
        w = ImMax(1.0f, width_to_right_edge + w);
    }
    w = (float)(int)w;
    return w;
}

static ImFont* GetDefaultFont()
{
    ImGuiContext& g = *GImGui;
    return g.IO.FontDefault ? g.IO.FontDefault : g.IO.Fonts->Fonts[0];
}

static void SetCurrentFont(ImFont* font)
{
    ImGuiContext& g = *GImGui;
    (void)( (!!(font && font->IsLoaded())) || (_wassert(L"font && font->IsLoaded()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4644)), 0) );    
    (void)( (!!(font->Scale > 0.0f)) || (_wassert(L"font->Scale > 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4645)), 0) );
    g.Font = font;
    g.FontBaseSize = g.IO.FontGlobalScale * g.Font->FontSize * g.Font->Scale;
    g.FontSize = g.CurrentWindow ? g.CurrentWindow->CalcFontSize() : 0.0f;
    g.FontTexUvWhitePixel = g.Font->ContainerAtlas->TexUvWhitePixel;
}

void ImGui::PushFont(ImFont* font)
{
    ImGuiContext& g = *GImGui;
    if (!font)
        font = GetDefaultFont();
    SetCurrentFont(font);
    g.FontStack.push_back(font);
    g.CurrentWindow->DrawList->PushTextureID(font->ContainerAtlas->TexID);
}

void  ImGui::PopFont()
{
    ImGuiContext& g = *GImGui;
    g.CurrentWindow->DrawList->PopTextureID();
    g.FontStack.pop_back();
    SetCurrentFont(g.FontStack.empty() ? GetDefaultFont() : g.FontStack.back());
}

void ImGui::PushAllowKeyboardFocus(bool allow_keyboard_focus)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.AllowKeyboardFocus = allow_keyboard_focus;
    window->DC.AllowKeyboardFocusStack.push_back(allow_keyboard_focus);
}

void ImGui::PopAllowKeyboardFocus()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.AllowKeyboardFocusStack.pop_back();
    window->DC.AllowKeyboardFocus = window->DC.AllowKeyboardFocusStack.empty() ? true : window->DC.AllowKeyboardFocusStack.back();
}

void ImGui::PushButtonRepeat(bool repeat)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.ButtonRepeat = repeat;
    window->DC.ButtonRepeatStack.push_back(repeat);
}

void ImGui::PopButtonRepeat()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.ButtonRepeatStack.pop_back();
    window->DC.ButtonRepeat = window->DC.ButtonRepeatStack.empty() ? false : window->DC.ButtonRepeatStack.back();
}

void ImGui::PushTextWrapPos(float wrap_pos_x)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.TextWrapPos = wrap_pos_x;
    window->DC.TextWrapPosStack.push_back(wrap_pos_x);
}

void ImGui::PopTextWrapPos()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.TextWrapPosStack.pop_back();
    window->DC.TextWrapPos = window->DC.TextWrapPosStack.empty() ? -1.0f : window->DC.TextWrapPosStack.back();
}

void ImGui::PushStyleColor(ImGuiCol idx, const ImVec4& col)
{
    ImGuiContext& g = *GImGui;
    ImGuiColMod backup;
    backup.Col = idx;
    backup.BackupValue = g.Style.Colors[idx];
    g.ColorModifiers.push_back(backup);
    g.Style.Colors[idx] = col;
}

void ImGui::PopStyleColor(int count)
{
    ImGuiContext& g = *GImGui;
    while (count > 0)
    {
        ImGuiColMod& backup = g.ColorModifiers.back();
        g.Style.Colors[backup.Col] = backup.BackupValue;
        g.ColorModifiers.pop_back();
        count--;
    }
}

struct ImGuiStyleVarInfo
{
    ImGuiDataType   Type;
    ImU32           Offset;
    void*           GetVarPtr() const { return (void*)((unsigned char*)&GImGui->Style + Offset); }
};

static const ImGuiStyleVarInfo GStyleVarInfo[ImGuiStyleVar_Count_] =
{
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->Alpha)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->WindowPadding)) },
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->WindowRounding)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->WindowMinSize)) },
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->ChildWindowRounding)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->FramePadding)) },
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->FrameRounding)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->ItemSpacing)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->ItemInnerSpacing)) },
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->IndentSpacing)) },
    { ImGuiDataType_Float,  (ImU32)((size_t)&(((ImGuiStyle*)0)->GrabMinSize)) },
    { ImGuiDataType_Float2, (ImU32)((size_t)&(((ImGuiStyle*)0)->ButtonTextAlign)) },
};

static const ImGuiStyleVarInfo* GetStyleVarInfo(ImGuiStyleVar idx)
{
    (void)( (!!(idx >= 0 && idx < ImGuiStyleVar_Count_)) || (_wassert(L"idx >= 0 && idx < ImGuiStyleVar_Count_", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4759)), 0) );
    return &GStyleVarInfo[idx];
}

void ImGui::PushStyleVar(ImGuiStyleVar idx, float val)
{
    const ImGuiStyleVarInfo* var_info = GetStyleVarInfo(idx);
    if (var_info->Type == ImGuiDataType_Float)
    {
        float* pvar = (float*)var_info->GetVarPtr();
        GImGui->StyleModifiers.push_back(ImGuiStyleMod(idx, *pvar));
        *pvar = val;
        return;
    }
    (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4773)), 0) ); 
}

void ImGui::PushStyleVar(ImGuiStyleVar idx, const ImVec2& val)
{
    const ImGuiStyleVarInfo* var_info = GetStyleVarInfo(idx);
    if (var_info->Type == ImGuiDataType_Float2)
    {
        ImVec2* pvar = (ImVec2*)var_info->GetVarPtr();
        GImGui->StyleModifiers.push_back(ImGuiStyleMod(idx, *pvar));
        *pvar = val;
        return;
    }
    (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4786)), 0) ); 
}

void ImGui::PopStyleVar(int count)
{
    ImGuiContext& g = *GImGui;
    while (count > 0)
    {
        ImGuiStyleMod& backup = g.StyleModifiers.back();
        const ImGuiStyleVarInfo* info = GetStyleVarInfo(backup.VarIdx);
        if (info->Type == ImGuiDataType_Float)          (*(float*)info->GetVarPtr()) = backup.BackupFloat[0];
        else if (info->Type == ImGuiDataType_Float2)    (*(ImVec2*)info->GetVarPtr()) = ImVec2(backup.BackupFloat[0], backup.BackupFloat[1]);
        else if (info->Type == ImGuiDataType_Int)       (*(int*)info->GetVarPtr()) = backup.BackupInt[0];
        g.StyleModifiers.pop_back();
        count--;
    }
}

const char* ImGui::GetStyleColName(ImGuiCol idx)
{
    
    switch (idx)
    {
    case ImGuiCol_Text: return "Text";
    case ImGuiCol_TextDisabled: return "TextDisabled";
    case ImGuiCol_WindowBg: return "WindowBg";
    case ImGuiCol_ChildWindowBg: return "ChildWindowBg";
    case ImGuiCol_PopupBg: return "PopupBg";
    case ImGuiCol_Border: return "Border";
    case ImGuiCol_BorderShadow: return "BorderShadow";
    case ImGuiCol_FrameBg: return "FrameBg";
    case ImGuiCol_FrameBgHovered: return "FrameBgHovered";
    case ImGuiCol_FrameBgActive: return "FrameBgActive";
    case ImGuiCol_TitleBg: return "TitleBg";
    case ImGuiCol_TitleBgCollapsed: return "TitleBgCollapsed";
    case ImGuiCol_TitleBgActive: return "TitleBgActive";
    case ImGuiCol_MenuBarBg: return "MenuBarBg";
    case ImGuiCol_ScrollbarBg: return "ScrollbarBg";
    case ImGuiCol_ScrollbarGrab: return "ScrollbarGrab";
    case ImGuiCol_ScrollbarGrabHovered: return "ScrollbarGrabHovered";
    case ImGuiCol_ScrollbarGrabActive: return "ScrollbarGrabActive";
    case ImGuiCol_ComboBg: return "ComboBg";
    case ImGuiCol_CheckMark: return "CheckMark";
    case ImGuiCol_SliderGrab: return "SliderGrab";
    case ImGuiCol_SliderGrabActive: return "SliderGrabActive";
    case ImGuiCol_Button: return "Button";
    case ImGuiCol_ButtonHovered: return "ButtonHovered";
    case ImGuiCol_ButtonActive: return "ButtonActive";
    case ImGuiCol_Header: return "Header";
    case ImGuiCol_HeaderHovered: return "HeaderHovered";
    case ImGuiCol_HeaderActive: return "HeaderActive";
    case ImGuiCol_Column: return "Column";
    case ImGuiCol_ColumnHovered: return "ColumnHovered";
    case ImGuiCol_ColumnActive: return "ColumnActive";
    case ImGuiCol_ResizeGrip: return "ResizeGrip";
    case ImGuiCol_ResizeGripHovered: return "ResizeGripHovered";
    case ImGuiCol_ResizeGripActive: return "ResizeGripActive";
    case ImGuiCol_CloseButton: return "CloseButton";
    case ImGuiCol_CloseButtonHovered: return "CloseButtonHovered";
    case ImGuiCol_CloseButtonActive: return "CloseButtonActive";
    case ImGuiCol_PlotLines: return "PlotLines";
    case ImGuiCol_PlotLinesHovered: return "PlotLinesHovered";
    case ImGuiCol_PlotHistogram: return "PlotHistogram";
    case ImGuiCol_PlotHistogramHovered: return "PlotHistogramHovered";
    case ImGuiCol_TextSelectedBg: return "TextSelectedBg";
    case ImGuiCol_ModalWindowDarkening: return "ModalWindowDarkening";
    }
    (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(4853)), 0) );
    return "Unknown";
}

bool ImGui::IsWindowHovered()
{
    ImGuiContext& g = *GImGui;
    return g.HoveredWindow == g.CurrentWindow && IsWindowContentHoverable(g.HoveredRootWindow);
}

bool ImGui::IsWindowFocused()
{
    ImGuiContext& g = *GImGui;
    return g.FocusedWindow == g.CurrentWindow;
}

bool ImGui::IsRootWindowFocused()
{
    ImGuiContext& g = *GImGui;
    return g.FocusedWindow == g.CurrentWindow->RootWindow;
}

bool ImGui::IsRootWindowOrAnyChildFocused()
{
    ImGuiContext& g = *GImGui;
    return g.FocusedWindow && g.FocusedWindow->RootWindow == g.CurrentWindow->RootWindow;
}

bool ImGui::IsRootWindowOrAnyChildHovered()
{
    ImGuiContext& g = *GImGui;
    return g.HoveredRootWindow && (g.HoveredRootWindow == g.CurrentWindow->RootWindow) && IsWindowContentHoverable(g.HoveredRootWindow);
}

float ImGui::GetWindowWidth()
{
    ImGuiWindow* window = GImGui->CurrentWindow;
    return window->Size.x;
}

float ImGui::GetWindowHeight()
{
    ImGuiWindow* window = GImGui->CurrentWindow;
    return window->Size.y;
}

ImVec2 ImGui::GetWindowPos()
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;
    return window->Pos;
}

static void SetWindowScrollY(ImGuiWindow* window, float new_scroll_y)
{
    window->DC.CursorMaxPos.y += window->Scroll.y;
    window->Scroll.y = new_scroll_y;
    window->DC.CursorMaxPos.y -= window->Scroll.y;
}

static void SetWindowPos(ImGuiWindow* window, const ImVec2& pos, ImGuiSetCond cond)
{
    
    if (cond && (window->SetWindowPosAllowFlags & cond) == 0)
        return;
    window->SetWindowPosAllowFlags &= ~(ImGuiSetCond_Once | ImGuiSetCond_FirstUseEver | ImGuiSetCond_Appearing);
    window->SetWindowPosCenterWanted = false;

    
    const ImVec2 old_pos = window->Pos;
    window->PosFloat = pos;
    window->Pos = ImVec2((float)(int)window->PosFloat.x, (float)(int)window->PosFloat.y);
    window->DC.CursorPos += (window->Pos - old_pos);    
    window->DC.CursorMaxPos += (window->Pos - old_pos); 
}

void ImGui::SetWindowPos(const ImVec2& pos, ImGuiSetCond cond)
{
    ImGuiWindow* window = GetCurrentWindowRead();
    SetWindowPos(window, pos, cond);
}

void ImGui::SetWindowPos(const char* name, const ImVec2& pos, ImGuiSetCond cond)
{
    if (ImGuiWindow* window = FindWindowByName(name))
        SetWindowPos(window, pos, cond);
}

ImVec2 ImGui::GetWindowSize()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->Size;
}

static void SetWindowSize(ImGuiWindow* window, const ImVec2& size, ImGuiSetCond cond)
{
    
    if (cond && (window->SetWindowSizeAllowFlags & cond) == 0)
        return;
    window->SetWindowSizeAllowFlags &= ~(ImGuiSetCond_Once | ImGuiSetCond_FirstUseEver | ImGuiSetCond_Appearing);

    
    if (size.x > 0.0f)
    {
        window->AutoFitFramesX = 0;
        window->SizeFull.x = size.x;
    }
    else
    {
        window->AutoFitFramesX = 2;
        window->AutoFitOnlyGrows = false;
    }
    if (size.y > 0.0f)
    {
        window->AutoFitFramesY = 0;
        window->SizeFull.y = size.y;
    }
    else
    {
        window->AutoFitFramesY = 2;
        window->AutoFitOnlyGrows = false;
    }
}

void ImGui::SetWindowSize(const ImVec2& size, ImGuiSetCond cond)
{
    SetWindowSize(GImGui->CurrentWindow, size, cond);
}

void ImGui::SetWindowSize(const char* name, const ImVec2& size, ImGuiSetCond cond)
{
    ImGuiWindow* window = FindWindowByName(name);
    if (window)
        SetWindowSize(window, size, cond);
}

static void SetWindowCollapsed(ImGuiWindow* window, bool collapsed, ImGuiSetCond cond)
{
    
    if (cond && (window->SetWindowCollapsedAllowFlags & cond) == 0)
        return;
    window->SetWindowCollapsedAllowFlags &= ~(ImGuiSetCond_Once | ImGuiSetCond_FirstUseEver | ImGuiSetCond_Appearing);

    
    window->Collapsed = collapsed;
}

void ImGui::SetWindowCollapsed(bool collapsed, ImGuiSetCond cond)
{
    SetWindowCollapsed(GImGui->CurrentWindow, collapsed, cond);
}

bool ImGui::IsWindowCollapsed()
{
    return GImGui->CurrentWindow->Collapsed;
}

void ImGui::SetWindowCollapsed(const char* name, bool collapsed, ImGuiSetCond cond)
{
    ImGuiWindow* window = FindWindowByName(name);
    if (window)
        SetWindowCollapsed(window, collapsed, cond);
}

void ImGui::SetWindowFocus()
{
    FocusWindow(GImGui->CurrentWindow);
}

void ImGui::SetWindowFocus(const char* name)
{
    if (name)
    {
        if (ImGuiWindow* window = FindWindowByName(name))
            FocusWindow(window);
    }
    else
    {
        FocusWindow(0);
    }
}

void ImGui::SetNextWindowPos(const ImVec2& pos, ImGuiSetCond cond)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowPosVal = pos;
    g.SetNextWindowPosCond = cond ? cond : ImGuiSetCond_Always;
}

void ImGui::SetNextWindowPosCenter(ImGuiSetCond cond)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowPosVal = ImVec2(-3.402823466e+38F, -3.402823466e+38F);
    g.SetNextWindowPosCond = cond ? cond : ImGuiSetCond_Always;
}

void ImGui::SetNextWindowSize(const ImVec2& size, ImGuiSetCond cond)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowSizeVal = size;
    g.SetNextWindowSizeCond = cond ? cond : ImGuiSetCond_Always;
}

void ImGui::SetNextWindowSizeConstraints(const ImVec2& size_min, const ImVec2& size_max, ImGuiSizeConstraintCallback custom_callback, void* custom_callback_user_data)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowSizeConstraint = true;
    g.SetNextWindowSizeConstraintRect = ImRect(size_min, size_max);
    g.SetNextWindowSizeConstraintCallback = custom_callback;
    g.SetNextWindowSizeConstraintCallbackUserData = custom_callback_user_data;
}

void ImGui::SetNextWindowContentSize(const ImVec2& size)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowContentSizeVal = size;
    g.SetNextWindowContentSizeCond = ImGuiSetCond_Always;
}

void ImGui::SetNextWindowContentWidth(float width)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowContentSizeVal = ImVec2(width, g.SetNextWindowContentSizeCond ? g.SetNextWindowContentSizeVal.y : 0.0f);
    g.SetNextWindowContentSizeCond = ImGuiSetCond_Always;
}

void ImGui::SetNextWindowCollapsed(bool collapsed, ImGuiSetCond cond)
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowCollapsedVal = collapsed;
    g.SetNextWindowCollapsedCond = cond ? cond : ImGuiSetCond_Always;
}

void ImGui::SetNextWindowFocus()
{
    ImGuiContext& g = *GImGui;
    g.SetNextWindowFocus = true;
}


ImVec2 ImGui::GetContentRegionMax()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    ImVec2 mx = window->ContentsRegionRect.Max;
    if (window->DC.ColumnsCount != 1)
        mx.x = GetColumnOffset(window->DC.ColumnsCurrent + 1) - window->WindowPadding.x;
    return mx;
}

ImVec2 ImGui::GetContentRegionAvail()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return GetContentRegionMax() - (window->DC.CursorPos - window->Pos);
}

float ImGui::GetContentRegionAvailWidth()
{
    return GetContentRegionAvail().x;
}


ImVec2 ImGui::GetWindowContentRegionMin()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->ContentsRegionRect.Min;
}

ImVec2 ImGui::GetWindowContentRegionMax()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->ContentsRegionRect.Max;
}

float ImGui::GetWindowContentRegionWidth()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->ContentsRegionRect.Max.x - window->ContentsRegionRect.Min.x;
}

float ImGui::GetTextLineHeight()
{
    ImGuiContext& g = *GImGui;
    return g.FontSize;
}

float ImGui::GetTextLineHeightWithSpacing()
{
    ImGuiContext& g = *GImGui;
    return g.FontSize + g.Style.ItemSpacing.y;
}

float ImGui::GetItemsLineHeightWithSpacing()
{
    ImGuiContext& g = *GImGui;
    return g.FontSize + g.Style.FramePadding.y * 2.0f + g.Style.ItemSpacing.y;
}

ImDrawList* ImGui::GetWindowDrawList()
{
    ImGuiWindow* window = GetCurrentWindow();
    return window->DrawList;
}

ImFont* ImGui::GetFont()
{
    return GImGui->Font;
}

float ImGui::GetFontSize()
{
    return GImGui->FontSize;
}

ImVec2 ImGui::GetFontTexUvWhitePixel()
{
    return GImGui->FontTexUvWhitePixel;
}

void ImGui::SetWindowFontScale(float scale)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();
    window->FontWindowScale = scale;
    g.FontSize = window->CalcFontSize();
}



ImVec2 ImGui::GetCursorPos()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.CursorPos - window->Pos + window->Scroll;
}

float ImGui::GetCursorPosX()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.CursorPos.x - window->Pos.x + window->Scroll.x;
}

float ImGui::GetCursorPosY()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.CursorPos.y - window->Pos.y + window->Scroll.y;
}

void ImGui::SetCursorPos(const ImVec2& local_pos)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.CursorPos = window->Pos - window->Scroll + local_pos;
    window->DC.CursorMaxPos = ImMax(window->DC.CursorMaxPos, window->DC.CursorPos);
}

void ImGui::SetCursorPosX(float x)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.CursorPos.x = window->Pos.x - window->Scroll.x + x;
    window->DC.CursorMaxPos.x = ImMax(window->DC.CursorMaxPos.x, window->DC.CursorPos.x);
}

void ImGui::SetCursorPosY(float y)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.CursorPos.y = window->Pos.y - window->Scroll.y + y;
    window->DC.CursorMaxPos.y = ImMax(window->DC.CursorMaxPos.y, window->DC.CursorPos.y);
}

ImVec2 ImGui::GetCursorStartPos()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.CursorStartPos - window->Pos;
}

ImVec2 ImGui::GetCursorScreenPos()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.CursorPos;
}

void ImGui::SetCursorScreenPos(const ImVec2& screen_pos)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.CursorPos = screen_pos;
    window->DC.CursorMaxPos = ImMax(window->DC.CursorMaxPos, window->DC.CursorPos);
}

float ImGui::GetScrollX()
{
    return GImGui->CurrentWindow->Scroll.x;
}

float ImGui::GetScrollY()
{
    return GImGui->CurrentWindow->Scroll.y;
}

float ImGui::GetScrollMaxX()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->SizeContents.x - window->SizeFull.x - window->ScrollbarSizes.x;
}

float ImGui::GetScrollMaxY()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->SizeContents.y - window->SizeFull.y - window->ScrollbarSizes.y;
}

void ImGui::SetScrollX(float scroll_x)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->ScrollTarget.x = scroll_x;
    window->ScrollTargetCenterRatio.x = 0.0f;
}

void ImGui::SetScrollY(float scroll_y)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->ScrollTarget.y = scroll_y + window->TitleBarHeight() + window->MenuBarHeight(); 
    window->ScrollTargetCenterRatio.y = 0.0f;
}

void ImGui::SetScrollFromPosY(float pos_y, float center_y_ratio)
{
    
    ImGuiWindow* window = GetCurrentWindow();
    (void)( (!!(center_y_ratio >= 0.0f && center_y_ratio <= 1.0f)) || (_wassert(L"center_y_ratio >= 0.0f && center_y_ratio <= 1.0f", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(5279)), 0) );
    window->ScrollTarget.y = (float)(int)(pos_y + window->Scroll.y);
    if (center_y_ratio <= 0.0f && window->ScrollTarget.y <= window->WindowPadding.y)    
        window->ScrollTarget.y = 0.0f;
    window->ScrollTargetCenterRatio.y = center_y_ratio;
}


void ImGui::SetScrollHere(float center_y_ratio)
{
    ImGuiWindow* window = GetCurrentWindow();
    float target_y = window->DC.CursorPosPrevLine.y + (window->DC.PrevLineHeight * center_y_ratio) + (GImGui->Style.ItemSpacing.y * (center_y_ratio - 0.5f) * 2.0f); 
    SetScrollFromPosY(target_y - window->Pos.y, center_y_ratio);
}

void ImGui::SetKeyboardFocusHere(int offset)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->FocusIdxAllRequestNext = window->FocusIdxAllCounter + 1 + offset;
    window->FocusIdxTabRequestNext = 2147483647;
}

void ImGui::SetStateStorage(ImGuiStorage* tree)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.StateStorage = tree ? tree : &window->StateStorage;
}

ImGuiStorage* ImGui::GetStateStorage()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.StateStorage;
}

void ImGui::TextV(const char* fmt, va_list args)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const char* text_end = g.TempBuffer + ImFormatStringV(g.TempBuffer, ((int)(sizeof(g.TempBuffer)/sizeof(*g.TempBuffer))), fmt, args);
    TextUnformatted(g.TempBuffer, text_end);
}

void ImGui::Text(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    TextV(fmt, args);
    ((void)(args = (va_list)0));
}

void ImGui::TextColoredV(const ImVec4& col, const char* fmt, va_list args)
{
    PushStyleColor(ImGuiCol_Text, col);
    TextV(fmt, args);
    PopStyleColor();
}

void ImGui::TextColored(const ImVec4& col, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    TextColoredV(col, fmt, args);
    ((void)(args = (va_list)0));
}

void ImGui::TextDisabledV(const char* fmt, va_list args)
{
    PushStyleColor(ImGuiCol_Text, GImGui->Style.Colors[ImGuiCol_TextDisabled]);
    TextV(fmt, args);
    PopStyleColor();
}

void ImGui::TextDisabled(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    TextDisabledV(fmt, args);
    ((void)(args = (va_list)0));
}

void ImGui::TextWrappedV(const char* fmt, va_list args)
{
    bool need_wrap = (GImGui->CurrentWindow->DC.TextWrapPos < 0.0f);    
    if (need_wrap) PushTextWrapPos(0.0f);
    TextV(fmt, args);
    if (need_wrap) PopTextWrapPos();
}

void ImGui::TextWrapped(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    TextWrappedV(fmt, args);
    ((void)(args = (va_list)0));
}

void ImGui::TextUnformatted(const char* text, const char* text_end)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    (void)( (!!(text != 0)) || (_wassert(L"text != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(5385)), 0) );
    const char* text_begin = text;
    if (text_end == 0)
        text_end = text + strlen(text); 

    const float wrap_pos_x = window->DC.TextWrapPos;
    const bool wrap_enabled = wrap_pos_x >= 0.0f;
    if (text_end - text > 2000 && !wrap_enabled)
    {
        
        
        
        
        const char* line = text;
        const float line_height = GetTextLineHeight();
        const ImVec2 text_pos = window->DC.CursorPos + ImVec2(0.0f, window->DC.CurrentLineTextBaseOffset);
        const ImRect clip_rect = window->ClipRect;
        ImVec2 text_size(0,0);

        if (text_pos.y <= clip_rect.Max.y)
        {
            ImVec2 pos = text_pos;

            
            if (!g.LogEnabled)
            {
                int lines_skippable = (int)((clip_rect.Min.y - text_pos.y) / line_height);
                if (lines_skippable > 0)
                {
                    int lines_skipped = 0;
                    while (line < text_end && lines_skipped < lines_skippable)
                    {
                        const char* line_end = strchr(line, '\n');
                        if (!line_end)
                            line_end = text_end;
                        line = line_end + 1;
                        lines_skipped++;
                    }
                    pos.y += lines_skipped * line_height;
                }
            }

            
            if (line < text_end)
            {
                ImRect line_rect(pos, pos + ImVec2(3.402823466e+38F, line_height));
                while (line < text_end)
                {
                    const char* line_end = strchr(line, '\n');
                    if (IsClippedEx(line_rect, 0, false))
                        break;

                    const ImVec2 line_size = CalcTextSize(line, line_end, false);
                    text_size.x = ImMax(text_size.x, line_size.x);
                    RenderText(pos, line, line_end, false);
                    if (!line_end)
                        line_end = text_end;
                    line = line_end + 1;
                    line_rect.Min.y += line_height;
                    line_rect.Max.y += line_height;
                    pos.y += line_height;
                }

                
                int lines_skipped = 0;
                while (line < text_end)
                {
                    const char* line_end = strchr(line, '\n');
                    if (!line_end)
                        line_end = text_end;
                    line = line_end + 1;
                    lines_skipped++;
                }
                pos.y += lines_skipped * line_height;
            }

            text_size.y += (pos - text_pos).y;
        }

        ImRect bb(text_pos, text_pos + text_size);
        ItemSize(bb);
        ItemAdd(bb, 0);
    }
    else
    {
        const float wrap_width = wrap_enabled ? CalcWrapWidthForPos(window->DC.CursorPos, wrap_pos_x) : 0.0f;
        const ImVec2 text_size = CalcTextSize(text_begin, text_end, false, wrap_width);

        
        ImVec2 text_pos(window->DC.CursorPos.x, window->DC.CursorPos.y + window->DC.CurrentLineTextBaseOffset);
        ImRect bb(text_pos, text_pos + text_size);
        ItemSize(text_size);
        if (!ItemAdd(bb, 0))
            return;

        
        RenderTextWrapped(bb.Min, text_begin, text_end, wrap_width);
    }
}

void ImGui::AlignFirstTextHeightToWidgets()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    
    ImGuiContext& g = *GImGui;
    ItemSize(ImVec2(0, g.FontSize + g.Style.FramePadding.y*2), g.Style.FramePadding.y);
    SameLine(0, 0);
}


void ImGui::LabelTextV(const char* label, const char* fmt, va_list args)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const float w = CalcItemWidth();

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    const ImRect value_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(w, label_size.y + style.FramePadding.y*2));
    const ImRect total_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(w + (label_size.x > 0.0f ? style.ItemInnerSpacing.x : 0.0f), style.FramePadding.y*2) + label_size);
    ItemSize(total_bb, style.FramePadding.y);
    if (!ItemAdd(total_bb, 0))
        return;

    
    const char* value_text_begin = &g.TempBuffer[0];
    const char* value_text_end = value_text_begin + ImFormatStringV(g.TempBuffer, ((int)(sizeof(g.TempBuffer)/sizeof(*g.TempBuffer))), fmt, args);
    RenderTextClipped(value_bb.Min, value_bb.Max, value_text_begin, value_text_end, 0, ImVec2(0.0f,0.5f));
    if (label_size.x > 0.0f)
        RenderText(ImVec2(value_bb.Max.x + style.ItemInnerSpacing.x, value_bb.Min.y + style.FramePadding.y), label);
}

void ImGui::LabelText(const char* label, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    LabelTextV(label, fmt, args);
    ((void)(args = (va_list)0));
}

static inline bool IsWindowContentHoverable(ImGuiWindow* window)
{
    
    ImGuiContext& g = *GImGui;
    if (ImGuiWindow* focused_window = g.FocusedWindow)
        if (ImGuiWindow* focused_root_window = focused_window->RootWindow)
            if ((focused_root_window->Flags & ImGuiWindowFlags_Popup) != 0 && focused_root_window->WasActive && focused_root_window != window->RootWindow)
                return false;

    return true;
}

bool ImGui::ButtonBehavior(const ImRect& bb, ImGuiID id, bool* out_hovered, bool* out_held, ImGuiButtonFlags flags)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    if (flags & ImGuiButtonFlags_Disabled)
    {
        if (out_hovered) *out_hovered = false;
        if (out_held) *out_held = false;
        if (g.ActiveId == id) ClearActiveID();
        return false;
    }

    if ((flags & (ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnClick | ImGuiButtonFlags_PressedOnRelease | ImGuiButtonFlags_PressedOnDoubleClick)) == 0)
        flags |= ImGuiButtonFlags_PressedOnClickRelease;

    bool pressed = false;
    bool hovered = IsHovered(bb, id, (flags & ImGuiButtonFlags_FlattenChilds) != 0);
    if (hovered)
    {
        SetHoveredID(id);
        if (!(flags & ImGuiButtonFlags_NoKeyModifiers) || (!g.IO.KeyCtrl && !g.IO.KeyShift && !g.IO.KeyAlt))
        {
            
            
            
            
            
            if ((flags & ImGuiButtonFlags_PressedOnClickRelease) && g.IO.MouseClicked[0])
            {
                SetActiveID(id, window); 
                FocusWindow(window);
                g.ActiveIdClickOffset = g.IO.MousePos - bb.Min;
            }
            if (((flags & ImGuiButtonFlags_PressedOnClick) && g.IO.MouseClicked[0]) || ((flags & ImGuiButtonFlags_PressedOnDoubleClick) && g.IO.MouseDoubleClicked[0]))
            {
                pressed = true;
                ClearActiveID();
                FocusWindow(window);
            }
            if ((flags & ImGuiButtonFlags_PressedOnRelease) && g.IO.MouseReleased[0])
            {
                if (!((flags & ImGuiButtonFlags_Repeat) && g.IO.MouseDownDurationPrev[0] >= g.IO.KeyRepeatDelay))  
                    pressed = true;
                ClearActiveID();
            }

            
            
            if ((flags & ImGuiButtonFlags_Repeat) && g.ActiveId == id && g.IO.MouseDownDuration[0] > 0.0f && IsMouseClicked(0, true))
                pressed = true;
        }
    }

    bool held = false;
    if (g.ActiveId == id)
    {
        if (g.IO.MouseDown[0])
        {
            held = true;
        }
        else
        {
            if (hovered && (flags & ImGuiButtonFlags_PressedOnClickRelease))
                if (!((flags & ImGuiButtonFlags_Repeat) && g.IO.MouseDownDurationPrev[0] >= g.IO.KeyRepeatDelay))  
                    pressed = true;
            ClearActiveID();
        }
    }

    
    if (hovered && (flags & ImGuiButtonFlags_AllowOverlapMode) && (g.HoveredIdPreviousFrame != id && g.HoveredIdPreviousFrame != 0))
        hovered = pressed = held = false;

    if (out_hovered) *out_hovered = hovered;
    if (out_held) *out_held = held;

    return pressed;
}

bool ImGui::ButtonEx(const char* label, const ImVec2& size_arg, ImGuiButtonFlags flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const ImVec2 label_size = CalcTextSize(label, 0, true);

    ImVec2 pos = window->DC.CursorPos;
    if ((flags & ImGuiButtonFlags_AlignTextBaseLine) && style.FramePadding.y < window->DC.CurrentLineTextBaseOffset) 
        pos.y += window->DC.CurrentLineTextBaseOffset - style.FramePadding.y;
    ImVec2 size = CalcItemSize(size_arg, label_size.x + style.FramePadding.x * 2.0f, label_size.y + style.FramePadding.y * 2.0f);

    const ImRect bb(pos, pos + size);
    ItemSize(bb, style.FramePadding.y);
    if (!ItemAdd(bb, &id))
        return false;

    if (window->DC.ButtonRepeat) flags |= ImGuiButtonFlags_Repeat;
    bool hovered, held;
    bool pressed = ButtonBehavior(bb, id, &hovered, &held, flags);

    
    const ImU32 col = GetColorU32((hovered && held) ? ImGuiCol_ButtonActive : hovered ? ImGuiCol_ButtonHovered : ImGuiCol_Button);
    RenderFrame(bb.Min, bb.Max, col, true, style.FrameRounding);
    RenderTextClipped(bb.Min + style.FramePadding, bb.Max - style.FramePadding, label, 0, &label_size, style.ButtonTextAlign, &bb);

    
    
    

    return pressed;
}

bool ImGui::Button(const char* label, const ImVec2& size_arg)
{
    return ButtonEx(label, size_arg, 0);
}


bool ImGui::SmallButton(const char* label)
{
    ImGuiContext& g = *GImGui;
    float backup_padding_y = g.Style.FramePadding.y;
    g.Style.FramePadding.y = 0.0f;
    bool pressed = ButtonEx(label, ImVec2(0,0), ImGuiButtonFlags_AlignTextBaseLine);
    g.Style.FramePadding.y = backup_padding_y;
    return pressed;
}



bool ImGui::InvisibleButton(const char* str_id, const ImVec2& size_arg)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    const ImGuiID id = window->GetID(str_id);
    ImVec2 size = CalcItemSize(size_arg, 0.0f, 0.0f);
    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + size);
    ItemSize(bb);
    if (!ItemAdd(bb, &id))
        return false;

    bool hovered, held;
    bool pressed = ButtonBehavior(bb, id, &hovered, &held);

    return pressed;
}


bool ImGui::CloseButton(ImGuiID id, const ImVec2& pos, float radius)
{
    ImGuiWindow* window = GetCurrentWindow();

    const ImRect bb(pos - ImVec2(radius,radius), pos + ImVec2(radius,radius));

    bool hovered, held;
    bool pressed = ButtonBehavior(bb, id, &hovered, &held);

    
    const ImU32 col = GetColorU32((held && hovered) ? ImGuiCol_CloseButtonActive : hovered ? ImGuiCol_CloseButtonHovered : ImGuiCol_CloseButton);
    const ImVec2 center = bb.GetCenter();
    window->DrawList->AddCircleFilled(center, ImMax(2.0f, radius), col, 12);

    const float cross_extent = (radius * 0.7071f) - 1.0f;
    if (hovered)
    {
        window->DrawList->AddLine(center + ImVec2(+cross_extent,+cross_extent), center + ImVec2(-cross_extent,-cross_extent), GetColorU32(ImGuiCol_Text));
        window->DrawList->AddLine(center + ImVec2(+cross_extent,-cross_extent), center + ImVec2(-cross_extent,+cross_extent), GetColorU32(ImGuiCol_Text));
    }

    return pressed;
}

void ImGui::Image(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0, const ImVec2& uv1, const ImVec4& tint_col, const ImVec4& border_col)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImRect bb(window->DC.CursorPos, window->DC.CursorPos + size);
    if (border_col.w > 0.0f)
        bb.Max += ImVec2(2,2);
    ItemSize(bb);
    if (!ItemAdd(bb, 0))
        return;

    if (border_col.w > 0.0f)
    {
        window->DrawList->AddRect(bb.Min, bb.Max, GetColorU32(border_col), 0.0f);
        window->DrawList->AddImage(user_texture_id, bb.Min+ImVec2(1,1), bb.Max-ImVec2(1,1), uv0, uv1, GetColorU32(tint_col));
    }
    else
    {
        window->DrawList->AddImage(user_texture_id, bb.Min, bb.Max, uv0, uv1, GetColorU32(tint_col));
    }
}





bool ImGui::ImageButton(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0, const ImVec2& uv1, int frame_padding, const ImVec4& bg_col, const ImVec4& tint_col)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    
    
    PushID((void *)user_texture_id);
    const ImGuiID id = window->GetID("#image");
    PopID();

    const ImVec2 padding = (frame_padding >= 0) ? ImVec2((float)frame_padding, (float)frame_padding) : style.FramePadding;
    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + size + padding*2);
    const ImRect image_bb(window->DC.CursorPos + padding, window->DC.CursorPos + padding + size);
    ItemSize(bb);
    if (!ItemAdd(bb, &id))
        return false;

    bool hovered, held;
    bool pressed = ButtonBehavior(bb, id, &hovered, &held);

    
    const ImU32 col = GetColorU32((hovered && held) ? ImGuiCol_ButtonActive : hovered ? ImGuiCol_ButtonHovered : ImGuiCol_Button);
    RenderFrame(bb.Min, bb.Max, col, true, ImClamp((float)ImMin(padding.x, padding.y), 0.0f, style.FrameRounding));
    if (bg_col.w > 0.0f)
        window->DrawList->AddRectFilled(image_bb.Min, image_bb.Max, GetColorU32(bg_col));
    window->DrawList->AddImage(user_texture_id, image_bb.Min, image_bb.Max, uv0, uv1, GetColorU32(tint_col));

    return pressed;
}


void ImGui::LogToTTY(int max_depth)
{
    ImGuiContext& g = *GImGui;
    if (g.LogEnabled)
        return;
    ImGuiWindow* window = GetCurrentWindowRead();

    g.LogEnabled = true;
    g.LogFile = (__acrt_iob_func(1));
    g.LogStartDepth = window->DC.TreeDepth;
    if (max_depth >= 0)
        g.LogAutoExpandMaxDepth = max_depth;
}


void ImGui::LogToFile(int max_depth, const char* filename)
{
    ImGuiContext& g = *GImGui;
    if (g.LogEnabled)
        return;
    ImGuiWindow* window = GetCurrentWindowRead();

    if (!filename)
    {
        filename = g.IO.LogFilename;
        if (!filename)
            return;
    }

    g.LogFile = ImFileOpen(filename, "ab");
    if (!g.LogFile)
    {
        (void)( (!!(g.LogFile != 0)) || (_wassert(L"g.LogFile != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(5818)), 0) ); 
        return;
    }
    g.LogEnabled = true;
    g.LogStartDepth = window->DC.TreeDepth;
    if (max_depth >= 0)
        g.LogAutoExpandMaxDepth = max_depth;
}


void ImGui::LogToClipboard(int max_depth)
{
    ImGuiContext& g = *GImGui;
    if (g.LogEnabled)
        return;
    ImGuiWindow* window = GetCurrentWindowRead();

    g.LogEnabled = true;
    g.LogFile = 0;
    g.LogStartDepth = window->DC.TreeDepth;
    if (max_depth >= 0)
        g.LogAutoExpandMaxDepth = max_depth;
}

void ImGui::LogFinish()
{
    ImGuiContext& g = *GImGui;
    if (!g.LogEnabled)
        return;

    LogText("\r\n");
    g.LogEnabled = false;
    if (g.LogFile != 0)
    {
        if (g.LogFile == (__acrt_iob_func(1)))
            fflush(g.LogFile);
        else
            fclose(g.LogFile);
        g.LogFile = 0;
    }
    if (g.LogClipboard->size() > 1)
    {
        SetClipboardText(g.LogClipboard->begin());
        g.LogClipboard->clear();
    }
}


void ImGui::LogButtons()
{
    ImGuiContext& g = *GImGui;

    PushID("LogButtons");
    const bool log_to_tty = Button("Log To TTY"); SameLine();
    const bool log_to_file = Button("Log To File"); SameLine();
    const bool log_to_clipboard = Button("Log To Clipboard"); SameLine();
    PushItemWidth(80.0f);
    PushAllowKeyboardFocus(false);
    SliderInt("Depth", &g.LogAutoExpandMaxDepth, 0, 9, 0);
    PopAllowKeyboardFocus();
    PopItemWidth();
    PopID();

    
    if (log_to_tty)
        LogToTTY(g.LogAutoExpandMaxDepth);
    if (log_to_file)
        LogToFile(g.LogAutoExpandMaxDepth, g.IO.LogFilename);
    if (log_to_clipboard)
        LogToClipboard(g.LogAutoExpandMaxDepth);
}

bool ImGui::TreeNodeBehaviorIsOpen(ImGuiID id, ImGuiTreeNodeFlags flags)
{
    if (flags & ImGuiTreeNodeFlags_Leaf)
        return true;

    
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = g.CurrentWindow;
    ImGuiStorage* storage = window->DC.StateStorage;

    bool is_open;
    if (g.SetNextTreeNodeOpenCond != 0)
    {
        if (g.SetNextTreeNodeOpenCond & ImGuiSetCond_Always)
        {
            is_open = g.SetNextTreeNodeOpenVal;
            storage->SetInt(id, is_open);
        }
        else
        {
            
            const int stored_value = storage->GetInt(id, -1);
            if (stored_value == -1)
            {
                is_open = g.SetNextTreeNodeOpenVal;
                storage->SetInt(id, is_open);
            }
            else
            {
                is_open = stored_value != 0;
            }
        }
        g.SetNextTreeNodeOpenCond = 0;
    }
    else
    {
        is_open = storage->GetInt(id, (flags & ImGuiTreeNodeFlags_DefaultOpen) ? 1 : 0) != 0;
    }

    
    
    if (g.LogEnabled && !(flags & ImGuiTreeNodeFlags_NoAutoOpenOnLog) && window->DC.TreeDepth < g.LogAutoExpandMaxDepth)
        is_open = true;

    return is_open;
}

bool ImGui::TreeNodeBehavior(ImGuiID id, ImGuiTreeNodeFlags flags, const char* label, const char* label_end)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const bool display_frame = (flags & ImGuiTreeNodeFlags_Framed) != 0;
    const ImVec2 padding = display_frame ? style.FramePadding : ImVec2(style.FramePadding.x, 0.0f);

    if (!label_end)
        label_end = FindRenderedTextEnd(label);
    const ImVec2 label_size = CalcTextSize(label, label_end, false);

    
    const float text_base_offset_y = ImMax(0.0f, window->DC.CurrentLineTextBaseOffset - padding.y); 
    const float frame_height = ImMax(ImMin(window->DC.CurrentLineHeight, g.FontSize + style.FramePadding.y*2), label_size.y + padding.y*2);
    ImRect bb = ImRect(window->DC.CursorPos, ImVec2(window->Pos.x + GetContentRegionMax().x, window->DC.CursorPos.y + frame_height));
    if (display_frame)
    {
        
        bb.Min.x -= (float)(int)(window->WindowPadding.x*0.5f) - 1;
        bb.Max.x += (float)(int)(window->WindowPadding.x*0.5f) - 1;
    }

    const float text_offset_x = (g.FontSize + (display_frame ? padding.x*3 : padding.x*2));   
    const float text_width = g.FontSize + (label_size.x > 0.0f ? label_size.x + padding.x*2 : 0.0f);   
    ItemSize(ImVec2(text_width, frame_height), text_base_offset_y);

    
    
    const ImRect interact_bb = display_frame ? bb : ImRect(bb.Min.x, bb.Min.y, bb.Min.x + text_width + style.ItemSpacing.x*2, bb.Max.y);
    bool is_open = TreeNodeBehaviorIsOpen(id, flags);
    if (!ItemAdd(interact_bb, &id))
    {
        if (is_open && !(flags & ImGuiTreeNodeFlags_NoTreePushOnOpen))
            TreePushRawID(id);
        return is_open;
    }

    
    
    
    
    
    ImGuiButtonFlags button_flags = ImGuiButtonFlags_NoKeyModifiers | ((flags & ImGuiTreeNodeFlags_AllowOverlapMode) ? ImGuiButtonFlags_AllowOverlapMode : 0);
    if (flags & ImGuiTreeNodeFlags_OpenOnDoubleClick)
        button_flags |= ImGuiButtonFlags_PressedOnDoubleClick | ((flags & ImGuiTreeNodeFlags_OpenOnArrow) ? ImGuiButtonFlags_PressedOnClickRelease : 0);
    bool hovered, held, pressed = ButtonBehavior(interact_bb, id, &hovered, &held, button_flags);
    if (pressed && !(flags & ImGuiTreeNodeFlags_Leaf))
    {
        bool toggled = !(flags & (ImGuiTreeNodeFlags_OpenOnArrow | ImGuiTreeNodeFlags_OpenOnDoubleClick));
        if (flags & ImGuiTreeNodeFlags_OpenOnArrow)
            toggled |= IsMouseHoveringRect(interact_bb.Min, ImVec2(interact_bb.Min.x + text_offset_x, interact_bb.Max.y));
        if (flags & ImGuiTreeNodeFlags_OpenOnDoubleClick)
            toggled |= g.IO.MouseDoubleClicked[0];
        if (toggled)
        {
            is_open = !is_open;
            window->DC.StateStorage->SetInt(id, is_open);
        }
    }
    if (flags & ImGuiTreeNodeFlags_AllowOverlapMode)
        SetItemAllowOverlap();

    
    const ImU32 col = GetColorU32((held && hovered) ? ImGuiCol_HeaderActive : hovered ? ImGuiCol_HeaderHovered : ImGuiCol_Header);
    const ImVec2 text_pos = bb.Min + ImVec2(text_offset_x, padding.y + text_base_offset_y);
    if (display_frame)
    {
        
        RenderFrame(bb.Min, bb.Max, col, true, style.FrameRounding);
        RenderCollapseTriangle(bb.Min + padding + ImVec2(0.0f, text_base_offset_y), is_open, 1.0f);
        if (g.LogEnabled)
        {
            
            const char log_prefix[] = "\n##";
            const char log_suffix[] = "##";
            LogRenderedText(text_pos, log_prefix, log_prefix+3);
            RenderTextClipped(text_pos, bb.Max, label, label_end, &label_size);
            LogRenderedText(text_pos, log_suffix+1, log_suffix+3);
        }
        else
        {
            RenderTextClipped(text_pos, bb.Max, label, label_end, &label_size);
        }
    }
    else
    {
        
        if (hovered || (flags & ImGuiTreeNodeFlags_Selected))
            RenderFrame(bb.Min, bb.Max, col, false);

        if (flags & ImGuiTreeNodeFlags_Bullet)
            RenderBullet(bb.Min + ImVec2(text_offset_x * 0.5f, g.FontSize*0.50f + text_base_offset_y));
        else if (!(flags & ImGuiTreeNodeFlags_Leaf))
            RenderCollapseTriangle(bb.Min + ImVec2(padding.x, g.FontSize*0.15f + text_base_offset_y), is_open, 0.70f);
        if (g.LogEnabled)
            LogRenderedText(text_pos, ">");
        RenderText(text_pos, label, label_end, false);
    }

    if (is_open && !(flags & ImGuiTreeNodeFlags_NoTreePushOnOpen))
        TreePushRawID(id);
    return is_open;
}



bool ImGui::CollapsingHeader(const char* label, ImGuiTreeNodeFlags flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    return TreeNodeBehavior(window->GetID(label), flags | ImGuiTreeNodeFlags_CollapsingHeader | ImGuiTreeNodeFlags_NoTreePushOnOpen, label);
}

bool ImGui::CollapsingHeader(const char* label, bool* p_open, ImGuiTreeNodeFlags flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    if (p_open && !*p_open)
        return false;

    ImGuiID id = window->GetID(label);
    bool is_open = TreeNodeBehavior(id, flags | ImGuiTreeNodeFlags_CollapsingHeader | ImGuiTreeNodeFlags_NoTreePushOnOpen | (p_open ? ImGuiTreeNodeFlags_AllowOverlapMode : 0), label);
    if (p_open)
    {
        
        ImGuiContext& g = *GImGui;
        float button_sz = g.FontSize * 0.5f;
        if (CloseButton(window->GetID((void*)(intptr_t)(id+1)), ImVec2(ImMin(window->DC.LastItemRect.Max.x, window->ClipRect.Max.x) - g.Style.FramePadding.x - button_sz, window->DC.LastItemRect.Min.y + g.Style.FramePadding.y + button_sz), button_sz))
            *p_open = false;
    }

    return is_open;
}

bool ImGui::TreeNodeEx(const char* label, ImGuiTreeNodeFlags flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    return TreeNodeBehavior(window->GetID(label), flags, label, 0);
}

bool ImGui::TreeNodeExV(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const char* label_end = g.TempBuffer + ImFormatStringV(g.TempBuffer, ((int)(sizeof(g.TempBuffer)/sizeof(*g.TempBuffer))), fmt, args);
    return TreeNodeBehavior(window->GetID(str_id), flags, g.TempBuffer, label_end);
}

bool ImGui::TreeNodeExV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const char* label_end = g.TempBuffer + ImFormatStringV(g.TempBuffer, ((int)(sizeof(g.TempBuffer)/sizeof(*g.TempBuffer))), fmt, args);
    return TreeNodeBehavior(window->GetID(ptr_id), flags, g.TempBuffer, label_end);
}

bool ImGui::TreeNodeV(const char* str_id, const char* fmt, va_list args)
{
    return TreeNodeExV(str_id, 0, fmt, args);
}

bool ImGui::TreeNodeV(const void* ptr_id, const char* fmt, va_list args)
{
    return TreeNodeExV(ptr_id, 0, fmt, args);
}

bool ImGui::TreeNodeEx(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    bool is_open = TreeNodeExV(str_id, flags, fmt, args);
    ((void)(args = (va_list)0));
    return is_open;
}

bool ImGui::TreeNodeEx(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    bool is_open = TreeNodeExV(ptr_id, flags, fmt, args);
    ((void)(args = (va_list)0));
    return is_open;
}

bool ImGui::TreeNode(const char* str_id, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    bool is_open = TreeNodeExV(str_id, 0, fmt, args);
    ((void)(args = (va_list)0));
    return is_open;
}

bool ImGui::TreeNode(const void* ptr_id, const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    bool is_open = TreeNodeExV(ptr_id, 0, fmt, args);
    ((void)(args = (va_list)0));
    return is_open;
}

bool ImGui::TreeNode(const char* label)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;
    return TreeNodeBehavior(window->GetID(label), 0, label, 0);
}

void ImGui::TreeAdvanceToLabelPos()
{
    ImGuiContext& g = *GImGui;
    g.CurrentWindow->DC.CursorPos.x += GetTreeNodeToLabelSpacing();
}


float ImGui::GetTreeNodeToLabelSpacing()
{
    ImGuiContext& g = *GImGui;
    return g.FontSize + (g.Style.FramePadding.x * 2.0f);
}

void ImGui::SetNextTreeNodeOpen(bool is_open, ImGuiSetCond cond)
{
    ImGuiContext& g = *GImGui;
    g.SetNextTreeNodeOpenVal = is_open;
    g.SetNextTreeNodeOpenCond = cond ? cond : ImGuiSetCond_Always;
}

void ImGui::PushID(const char* str_id)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->IDStack.push_back(window->GetID(str_id));
}

void ImGui::PushID(const char* str_id_begin, const char* str_id_end)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->IDStack.push_back(window->GetID(str_id_begin, str_id_end));
}

void ImGui::PushID(const void* ptr_id)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->IDStack.push_back(window->GetID(ptr_id));
}

void ImGui::PushID(int int_id)
{
    const void* ptr_id = (void*)(intptr_t)int_id;
    ImGuiWindow* window = GetCurrentWindow();
    window->IDStack.push_back(window->GetID(ptr_id));
}

void ImGui::PopID()
{
    ImGuiWindow* window = GetCurrentWindow();
    window->IDStack.pop_back();
}

ImGuiID ImGui::GetID(const char* str_id)
{
    return GImGui->CurrentWindow->GetID(str_id);
}

ImGuiID ImGui::GetID(const char* str_id_begin, const char* str_id_end)
{
    return GImGui->CurrentWindow->GetID(str_id_begin, str_id_end);
}

ImGuiID ImGui::GetID(const void* ptr_id)
{
    return GImGui->CurrentWindow->GetID(ptr_id);
}

void ImGui::Bullet()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const float line_height = ImMax(ImMin(window->DC.CurrentLineHeight, g.FontSize + g.Style.FramePadding.y*2), g.FontSize);
    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(g.FontSize, line_height));
    ItemSize(bb);
    if (!ItemAdd(bb, 0))
    {
        SameLine(0, style.FramePadding.x*2);
        return;
    }

    
    RenderBullet(bb.Min + ImVec2(style.FramePadding.x + g.FontSize*0.5f, line_height*0.5f));
    SameLine(0, style.FramePadding.x*2);
}


void ImGui::BulletTextV(const char* fmt, va_list args)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    const char* text_begin = g.TempBuffer;
    const char* text_end = text_begin + ImFormatStringV(g.TempBuffer, ((int)(sizeof(g.TempBuffer)/sizeof(*g.TempBuffer))), fmt, args);
    const ImVec2 label_size = CalcTextSize(text_begin, text_end, false);
    const float text_base_offset_y = ImMax(0.0f, window->DC.CurrentLineTextBaseOffset); 
    const float line_height = ImMax(ImMin(window->DC.CurrentLineHeight, g.FontSize + g.Style.FramePadding.y*2), g.FontSize);
    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(g.FontSize + (label_size.x > 0.0f ? (label_size.x + style.FramePadding.x*2) : 0.0f), ImMax(line_height, label_size.y)));  
    ItemSize(bb);
    if (!ItemAdd(bb, 0))
        return;

    
    RenderBullet(bb.Min + ImVec2(style.FramePadding.x + g.FontSize*0.5f, line_height*0.5f));
    RenderText(bb.Min+ImVec2(g.FontSize + style.FramePadding.x*2, text_base_offset_y), text_begin, text_end, false);
}

void ImGui::BulletText(const char* fmt, ...)
{
    va_list args;
    ((void)(__vcrt_va_start_verify_argument_type<decltype(fmt)>(), ((void)(args = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(fmt))) + ((sizeof(fmt) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    BulletTextV(fmt, args);
    ((void)(args = (va_list)0));
}

static inline void DataTypeFormatString(ImGuiDataType data_type, void* data_ptr, const char* display_format, char* buf, int buf_size)
{
    if (data_type == ImGuiDataType_Int)
        ImFormatString(buf, buf_size, display_format, *(int*)data_ptr);
    else if (data_type == ImGuiDataType_Float)
        ImFormatString(buf, buf_size, display_format, *(float*)data_ptr);
}

static inline void DataTypeFormatString(ImGuiDataType data_type, void* data_ptr, int decimal_precision, char* buf, int buf_size)
{
    if (data_type == ImGuiDataType_Int)
    {
        if (decimal_precision < 0)
            ImFormatString(buf, buf_size, "%d", *(int*)data_ptr);
        else
            ImFormatString(buf, buf_size, "%.*d", decimal_precision, *(int*)data_ptr);
    }
    else if (data_type == ImGuiDataType_Float)
    {
        if (decimal_precision < 0)
            ImFormatString(buf, buf_size, "%f", *(float*)data_ptr);     
        else
            ImFormatString(buf, buf_size, "%.*f", decimal_precision, *(float*)data_ptr);
    }
}

static void DataTypeApplyOp(ImGuiDataType data_type, int op, void* value1, const void* value2)
{
    if (data_type == ImGuiDataType_Int)
    {
        if (op == '+')
            *(int*)value1 = *(int*)value1 + *(const int*)value2;
        else if (op == '-')
            *(int*)value1 = *(int*)value1 - *(const int*)value2;
    }
    else if (data_type == ImGuiDataType_Float)
    {
        if (op == '+')
            *(float*)value1 = *(float*)value1 + *(const float*)value2;
        else if (op == '-')
            *(float*)value1 = *(float*)value1 - *(const float*)value2;
    }
}


static bool DataTypeApplyOpFromText(const char* buf, const char* initial_value_buf, ImGuiDataType data_type, void* data_ptr, const char* scalar_format)
{
    while (ImCharIsSpace(*buf))
        buf++;

    
    
    char op = buf[0];
    if (op == '+' || op == '*' || op == '/')
    {
        buf++;
        while (ImCharIsSpace(*buf))
            buf++;
    }
    else
    {
        op = 0;
    }
    if (!buf[0])
        return false;

    if (data_type == ImGuiDataType_Int)
    {
        if (!scalar_format)
            scalar_format = "%d";
        int* v = (int*)data_ptr;
        const int old_v = *v;
        int arg0 = *v;
        if (op && sscanf(initial_value_buf, scalar_format, &arg0) < 1)
            return false;

        
        float arg1 = 0.0f;
        if (op == '+')      { if (sscanf(buf, "%f", &arg1) == 1) *v = (int)(arg0 + arg1); }                
        else if (op == '*') { if (sscanf(buf, "%f", &arg1) == 1) *v = (int)(arg0 * arg1); }                
        else if (op == '/') { if (sscanf(buf, "%f", &arg1) == 1 && arg1 != 0.0f) *v = (int)(arg0 / arg1); }
        else                { if (sscanf(buf, scalar_format, &arg0) == 1) *v = arg0; }                     
        return (old_v != *v);
    }
    else if (data_type == ImGuiDataType_Float)
    {
        
        scalar_format = "%f";
        float* v = (float*)data_ptr;
        const float old_v = *v;
        float arg0 = *v;
        if (op && sscanf(initial_value_buf, scalar_format, &arg0) < 1)
            return false;

        float arg1 = 0.0f;
        if (sscanf(buf, scalar_format, &arg1) < 1)
            return false;
        if (op == '+')      { *v = arg0 + arg1; }                    
        else if (op == '*') { *v = arg0 * arg1; }                    
        else if (op == '/') { if (arg1 != 0.0f) *v = arg0 / arg1; }  
        else                { *v = arg1; }                           
        return (old_v != *v);
    }

    return false;
}


bool ImGui::InputScalarAsWidgetReplacement(const ImRect& aabb, const char* label, ImGuiDataType data_type, void* data_ptr, ImGuiID id, int decimal_precision)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    
    SetActiveID(g.ScalarAsInputTextId, window);
    SetHoveredID(0);
    FocusableItemUnregister(window);

    char buf[32];
    DataTypeFormatString(data_type, data_ptr, decimal_precision, buf, ((int)(sizeof(buf)/sizeof(*buf))));
    bool text_value_changed = InputTextEx(label, buf, ((int)(sizeof(buf)/sizeof(*buf))), aabb.GetSize(), ImGuiInputTextFlags_CharsDecimal | ImGuiInputTextFlags_AutoSelectAll);
    if (g.ScalarAsInputTextId == 0)
    {
        
        (void)( (!!(g.ActiveId == id)) || (_wassert(L"g.ActiveId == id", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(6409)), 0) );    
        g.ScalarAsInputTextId = g.ActiveId;
        SetHoveredID(id);
    }
    else if (g.ActiveId != g.ScalarAsInputTextId)
    {
        
        g.ScalarAsInputTextId = 0;
    }
    if (text_value_changed)
        return DataTypeApplyOpFromText(buf, GImGui->InputTextState.InitialText.begin(), data_type, data_ptr, 0);
    return false;
}


int ImGui::ParseFormatPrecision(const char* fmt, int default_precision)
{
    int precision = default_precision;
    while ((fmt = strchr(fmt, '%')) != 0)
    {
        fmt++;
        if (fmt[0] == '%') { fmt++; continue; } 
        while (*fmt >= '0' && *fmt <= '9')
            fmt++;
        if (*fmt == '.')
        {
            precision = atoi(fmt + 1);
            if (precision < 0 || precision > 10)
                precision = default_precision;
        }
        break;
    }
    return precision;
}

float ImGui::RoundScalar(float value, int decimal_precision)
{
    
    
    
    static const float min_steps[10] = { 1.0f, 0.1f, 0.01f, 0.001f, 0.0001f, 0.00001f, 0.000001f, 0.0000001f, 0.00000001f, 0.000000001f };
    float min_step = (decimal_precision >= 0 && decimal_precision < 10) ? min_steps[decimal_precision] : powf(10.0f, (float)-decimal_precision);
    bool negative = value < 0.0f;
    value = fabsf(value);
    float remainder = fmodf(value, min_step);
    if (remainder <= min_step*0.5f)
        value -= remainder;
    else
        value += (min_step - remainder);
    return negative ? -value : value;
}

static inline float SliderBehaviorCalcRatioFromValue(float v, float v_min, float v_max, float power, float linear_zero_pos)
{
    if (v_min == v_max)
        return 0.0f;

    const bool is_non_linear = (power < 1.0f-0.00001f) || (power > 1.0f+0.00001f);
    const float v_clamped = (v_min < v_max) ? ImClamp(v, v_min, v_max) : ImClamp(v, v_max, v_min);
    if (is_non_linear)
    {
        if (v_clamped < 0.0f)
        {
            const float f = 1.0f - (v_clamped - v_min) / (ImMin(0.0f,v_max) - v_min);
            return (1.0f - powf(f, 1.0f/power)) * linear_zero_pos;
        }
        else
        {
            const float f = (v_clamped - ImMax(0.0f,v_min)) / (v_max - ImMax(0.0f,v_min));
            return linear_zero_pos + powf(f, 1.0f/power) * (1.0f - linear_zero_pos);
        }
    }

    
    return (v_clamped - v_min) / (v_max - v_min);
}

bool ImGui::SliderBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_min, float v_max, float power, int decimal_precision, ImGuiSliderFlags flags)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();
    const ImGuiStyle& style = g.Style;

    
    RenderFrame(frame_bb.Min, frame_bb.Max, GetColorU32(ImGuiCol_FrameBg), true, style.FrameRounding);

    const bool is_non_linear = (power < 1.0f-0.00001f) || (power > 1.0f+0.00001f);
    const bool is_horizontal = (flags & ImGuiSliderFlags_Vertical) == 0;

    const float grab_padding = 2.0f;
    const float slider_sz = is_horizontal ? (frame_bb.GetWidth() - grab_padding * 2.0f) : (frame_bb.GetHeight() - grab_padding * 2.0f);
    float grab_sz;
    if (decimal_precision > 0)
        grab_sz = ImMin(style.GrabMinSize, slider_sz);
    else
        grab_sz = ImMin(ImMax(1.0f * (slider_sz / ((v_min < v_max ? v_max - v_min : v_min - v_max) + 1.0f)), style.GrabMinSize), slider_sz);  
    const float slider_usable_sz = slider_sz - grab_sz;
    const float slider_usable_pos_min = (is_horizontal ? frame_bb.Min.x : frame_bb.Min.y) + grab_padding + grab_sz*0.5f;
    const float slider_usable_pos_max = (is_horizontal ? frame_bb.Max.x : frame_bb.Max.y) - grab_padding - grab_sz*0.5f;

    
    float linear_zero_pos = 0.0f;   
    if (v_min * v_max < 0.0f)
    {
        
        const float linear_dist_min_to_0 = powf(fabsf(0.0f - v_min), 1.0f/power);
        const float linear_dist_max_to_0 = powf(fabsf(v_max - 0.0f), 1.0f/power);
        linear_zero_pos = linear_dist_min_to_0 / (linear_dist_min_to_0+linear_dist_max_to_0);
    }
    else
    {
        
        linear_zero_pos = v_min < 0.0f ? 1.0f : 0.0f;
    }

    
    bool value_changed = false;
    if (g.ActiveId == id)
    {
        if (g.IO.MouseDown[0])
        {
            const float mouse_abs_pos = is_horizontal ? g.IO.MousePos.x : g.IO.MousePos.y;
            float clicked_t = (slider_usable_sz > 0.0f) ? ImClamp((mouse_abs_pos - slider_usable_pos_min) / slider_usable_sz, 0.0f, 1.0f) : 0.0f;
            if (!is_horizontal)
                clicked_t = 1.0f - clicked_t;

            float new_value;
            if (is_non_linear)
            {
                
                if (clicked_t < linear_zero_pos)
                {
                    
                    float a = 1.0f - (clicked_t / linear_zero_pos);
                    a = powf(a, power);
                    new_value = ImLerp(ImMin(v_max,0.0f), v_min, a);
                }
                else
                {
                    
                    float a;
                    if (fabsf(linear_zero_pos - 1.0f) > 1.e-6f)
                        a = (clicked_t - linear_zero_pos) / (1.0f - linear_zero_pos);
                    else
                        a = clicked_t;
                    a = powf(a, power);
                    new_value = ImLerp(ImMax(v_min,0.0f), v_max, a);
                }
            }
            else
            {
                
                new_value = ImLerp(v_min, v_max, clicked_t);
            }

            
            new_value = RoundScalar(new_value, decimal_precision);
            if (*v != new_value)
            {
                *v = new_value;
                value_changed = true;
            }
        }
        else
        {
            ClearActiveID();
        }
    }

    
    float grab_t = SliderBehaviorCalcRatioFromValue(*v, v_min, v_max, power, linear_zero_pos);

    
    if (!is_horizontal)
        grab_t = 1.0f - grab_t;
    const float grab_pos = ImLerp(slider_usable_pos_min, slider_usable_pos_max, grab_t);
    ImRect grab_bb;
    if (is_horizontal)
        grab_bb = ImRect(ImVec2(grab_pos - grab_sz*0.5f, frame_bb.Min.y + grab_padding), ImVec2(grab_pos + grab_sz*0.5f, frame_bb.Max.y - grab_padding));
    else
        grab_bb = ImRect(ImVec2(frame_bb.Min.x + grab_padding, grab_pos - grab_sz*0.5f), ImVec2(frame_bb.Max.x - grab_padding, grab_pos + grab_sz*0.5f));
    window->DrawList->AddRectFilled(grab_bb.Min, grab_bb.Max, GetColorU32(g.ActiveId == id ? ImGuiCol_SliderGrabActive : ImGuiCol_SliderGrab), style.GrabRounding);

    return value_changed;
}






bool ImGui::SliderFloat(const char* label, float* v, float v_min, float v_max, const char* display_format, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const float w = CalcItemWidth();

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(w, label_size.y + style.FramePadding.y*2.0f));
    const ImRect total_bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0.0f));

    
    if (!ItemAdd(total_bb, &id))
    {
        ItemSize(total_bb, style.FramePadding.y);
        return false;
    }

    const bool hovered = IsHovered(frame_bb, id);
    if (hovered)
        SetHoveredID(id);

    if (!display_format)
        display_format = "%.3f";
    int decimal_precision = ParseFormatPrecision(display_format, 3);

    
    bool start_text_input = false;
    const bool tab_focus_requested = FocusableItemRegister(window, g.ActiveId == id);
    if (tab_focus_requested || (hovered && g.IO.MouseClicked[0]))
    {
        SetActiveID(id, window);
        FocusWindow(window);

        if (tab_focus_requested || g.IO.KeyCtrl)
        {
            start_text_input = true;
            g.ScalarAsInputTextId = 0;
        }
    }
    if (start_text_input || (g.ActiveId == id && g.ScalarAsInputTextId == id))
        return InputScalarAsWidgetReplacement(frame_bb, label, ImGuiDataType_Float, v, id, decimal_precision);

    ItemSize(total_bb, style.FramePadding.y);

    
    const bool value_changed = SliderBehavior(frame_bb, id, v, v_min, v_max, power, decimal_precision);

    
    char value_buf[64];
    const char* value_buf_end = value_buf + ImFormatString(value_buf, ((int)(sizeof(value_buf)/sizeof(*value_buf))), display_format, *v);
    RenderTextClipped(frame_bb.Min, frame_bb.Max, value_buf, value_buf_end, 0, ImVec2(0.5f,0.5f));

    if (label_size.x > 0.0f)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, frame_bb.Min.y + style.FramePadding.y), label);

    return value_changed;
}

bool ImGui::VSliderFloat(const char* label, const ImVec2& size, float* v, float v_min, float v_max, const char* display_format, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + size);
    const ImRect bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0.0f));

    ItemSize(bb, style.FramePadding.y);
    if (!ItemAdd(frame_bb, &id))
        return false;

    const bool hovered = IsHovered(frame_bb, id);
    if (hovered)
        SetHoveredID(id);

    if (!display_format)
        display_format = "%.3f";
    int decimal_precision = ParseFormatPrecision(display_format, 3);

    if (hovered && g.IO.MouseClicked[0])
    {
        SetActiveID(id, window);
        FocusWindow(window);
    }

    
    bool value_changed = SliderBehavior(frame_bb, id, v, v_min, v_max, power, decimal_precision, ImGuiSliderFlags_Vertical);

    
    
    char value_buf[64];
    char* value_buf_end = value_buf + ImFormatString(value_buf, ((int)(sizeof(value_buf)/sizeof(*value_buf))), display_format, *v);
    RenderTextClipped(ImVec2(frame_bb.Min.x, frame_bb.Min.y + style.FramePadding.y), frame_bb.Max, value_buf, value_buf_end, 0, ImVec2(0.5f,0.0f));
    if (label_size.x > 0.0f)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, frame_bb.Min.y + style.FramePadding.y), label);

    return value_changed;
}

bool ImGui::SliderAngle(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max)
{
    float v_deg = (*v_rad) * 360.0f / (2*3.14159265358979323846f);
    bool value_changed = SliderFloat(label, &v_deg, v_degrees_min, v_degrees_max, "%.0f deg", 1.0f);
    *v_rad = v_deg * (2*3.14159265358979323846f) / 360.0f;
    return value_changed;
}

bool ImGui::SliderInt(const char* label, int* v, int v_min, int v_max, const char* display_format)
{
    if (!display_format)
        display_format = "%.0f";
    float v_f = (float)*v;
    bool value_changed = SliderFloat(label, &v_f, (float)v_min, (float)v_max, display_format, 1.0f);
    *v = (int)v_f;
    return value_changed;
}

bool ImGui::VSliderInt(const char* label, const ImVec2& size, int* v, int v_min, int v_max, const char* display_format)
{
    if (!display_format)
        display_format = "%.0f";
    float v_f = (float)*v;
    bool value_changed = VSliderFloat(label, size, &v_f, (float)v_min, (float)v_max, display_format, 1.0f);
    *v = (int)v_f;
    return value_changed;
}


bool ImGui::SliderFloatN(const char* label, float* v, int components, float v_min, float v_max, const char* display_format, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= SliderFloat("##v", &v[i], v_min, v_max, display_format, power);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* display_format, float power)
{
    return SliderFloatN(label, v, 2, v_min, v_max, display_format, power);
}

bool ImGui::SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* display_format, float power)
{
    return SliderFloatN(label, v, 3, v_min, v_max, display_format, power);
}

bool ImGui::SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* display_format, float power)
{
    return SliderFloatN(label, v, 4, v_min, v_max, display_format, power);
}

bool ImGui::SliderIntN(const char* label, int* v, int components, int v_min, int v_max, const char* display_format)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= SliderInt("##v", &v[i], v_min, v_max, display_format);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* display_format)
{
    return SliderIntN(label, v, 2, v_min, v_max, display_format);
}

bool ImGui::SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* display_format)
{
    return SliderIntN(label, v, 3, v_min, v_max, display_format);
}

bool ImGui::SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* display_format)
{
    return SliderIntN(label, v, 4, v_min, v_max, display_format);
}

bool ImGui::DragBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_speed, float v_min, float v_max, int decimal_precision, float power)
{
    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    
    const ImU32 frame_col = GetColorU32(g.ActiveId == id ? ImGuiCol_FrameBgActive : g.HoveredId == id ? ImGuiCol_FrameBgHovered : ImGuiCol_FrameBg);
    RenderFrame(frame_bb.Min, frame_bb.Max, frame_col, true, style.FrameRounding);

    bool value_changed = false;

    
    if (g.ActiveId == id)
    {
        if (g.IO.MouseDown[0])
        {
            if (g.ActiveIdIsJustActivated)
            {
                
                g.DragCurrentValue = *v;
                g.DragLastMouseDelta = ImVec2(0.f, 0.f);
            }

            float v_cur = g.DragCurrentValue;
            const ImVec2 mouse_drag_delta = GetMouseDragDelta(0, 1.0f);
            if (fabsf(mouse_drag_delta.x - g.DragLastMouseDelta.x) > 0.0f)
            {
                float speed = v_speed;
                if (speed == 0.0f && (v_max - v_min) != 0.0f && (v_max - v_min) < 3.402823466e+38F)
                    speed = (v_max - v_min) * g.DragSpeedDefaultRatio;
                if (g.IO.KeyShift && g.DragSpeedScaleFast >= 0.0f)
                    speed = speed * g.DragSpeedScaleFast;
                if (g.IO.KeyAlt && g.DragSpeedScaleSlow >= 0.0f)
                    speed = speed * g.DragSpeedScaleSlow;

                float delta = (mouse_drag_delta.x - g.DragLastMouseDelta.x) * speed;
                if (fabsf(power - 1.0f) > 0.001f)
                {
                    
                    float v0_abs = v_cur >= 0.0f ? v_cur : -v_cur;
                    float v0_sign = v_cur >= 0.0f ? 1.0f : -1.0f;
                    float v1 = powf(v0_abs, 1.0f / power) + (delta * v0_sign);
                    float v1_abs = v1 >= 0.0f ? v1 : -v1;
                    float v1_sign = v1 >= 0.0f ? 1.0f : -1.0f;          
                    v_cur = powf(v1_abs, power) * v0_sign * v1_sign;    
                }
                else
                {
                    v_cur += delta;
                }
                g.DragLastMouseDelta.x = mouse_drag_delta.x;

                
                if (v_min < v_max)
                    v_cur = ImClamp(v_cur, v_min, v_max);
                g.DragCurrentValue = v_cur;
            }

            
            v_cur = RoundScalar(v_cur, decimal_precision);
            if (*v != v_cur)
            {
                *v = v_cur;
                value_changed = true;
            }
        }
        else
        {
            ClearActiveID();
        }
    }

    return value_changed;
}

bool ImGui::DragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* display_format, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const float w = CalcItemWidth();

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(w, label_size.y + style.FramePadding.y*2.0f));
    const ImRect inner_bb(frame_bb.Min + style.FramePadding, frame_bb.Max - style.FramePadding);
    const ImRect total_bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0.0f));

    
    if (!ItemAdd(total_bb, &id))
    {
        ItemSize(total_bb, style.FramePadding.y);
        return false;
    }

    const bool hovered = IsHovered(frame_bb, id);
    if (hovered)
        SetHoveredID(id);

    if (!display_format)
        display_format = "%.3f";
    int decimal_precision = ParseFormatPrecision(display_format, 3);

    
    bool start_text_input = false;
    const bool tab_focus_requested = FocusableItemRegister(window, g.ActiveId == id);
    if (tab_focus_requested || (hovered && (g.IO.MouseClicked[0] | g.IO.MouseDoubleClicked[0])))
    {
        SetActiveID(id, window);
        FocusWindow(window);

        if (tab_focus_requested || g.IO.KeyCtrl || g.IO.MouseDoubleClicked[0])
        {
            start_text_input = true;
            g.ScalarAsInputTextId = 0;
        }
    }
    if (start_text_input || (g.ActiveId == id && g.ScalarAsInputTextId == id))
        return InputScalarAsWidgetReplacement(frame_bb, label, ImGuiDataType_Float, v, id, decimal_precision);

    
    ItemSize(total_bb, style.FramePadding.y);
    const bool value_changed = DragBehavior(frame_bb, id, v, v_speed, v_min, v_max, decimal_precision, power);

    
    char value_buf[64];
    const char* value_buf_end = value_buf + ImFormatString(value_buf, ((int)(sizeof(value_buf)/sizeof(*value_buf))), display_format, *v);
    RenderTextClipped(frame_bb.Min, frame_bb.Max, value_buf, value_buf_end, 0, ImVec2(0.5f,0.5f));

    if (label_size.x > 0.0f)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, inner_bb.Min.y), label);

    return value_changed;
}

bool ImGui::DragFloatN(const char* label, float* v, int components, float v_speed, float v_min, float v_max, const char* display_format, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= DragFloat("##v", &v[i], v_speed, v_min, v_max, display_format, power);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::DragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* display_format, float power)
{
    return DragFloatN(label, v, 2, v_speed, v_min, v_max, display_format, power);
}

bool ImGui::DragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* display_format, float power)
{
    return DragFloatN(label, v, 3, v_speed, v_min, v_max, display_format, power);
}

bool ImGui::DragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* display_format, float power)
{
    return DragFloatN(label, v, 4, v_speed, v_min, v_max, display_format, power);
}

bool ImGui::DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* display_format, const char* display_format_max, float power)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    PushID(label);
    BeginGroup();
    PushMultiItemsWidths(2);

    bool value_changed = DragFloat("##min", v_current_min, v_speed, (v_min >= v_max) ? -3.402823466e+38F : v_min, (v_min >= v_max) ? *v_current_max : ImMin(v_max, *v_current_max), display_format, power);
    PopItemWidth();
    SameLine(0, g.Style.ItemInnerSpacing.x);
    value_changed |= DragFloat("##max", v_current_max, v_speed, (v_min >= v_max) ? *v_current_min : ImMax(v_min, *v_current_min), (v_min >= v_max) ? 3.402823466e+38F : v_max, display_format_max ? display_format_max : display_format, power);
    PopItemWidth();
    SameLine(0, g.Style.ItemInnerSpacing.x);

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();
    PopID();

    return value_changed;
}


bool ImGui::DragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* display_format)
{
    if (!display_format)
        display_format = "%.0f";
    float v_f = (float)*v;
    bool value_changed = DragFloat(label, &v_f, v_speed, (float)v_min, (float)v_max, display_format);
    *v = (int)v_f;
    return value_changed;
}

bool ImGui::DragIntN(const char* label, int* v, int components, float v_speed, int v_min, int v_max, const char* display_format)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= DragInt("##v", &v[i], v_speed, v_min, v_max, display_format);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::DragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* display_format)
{
    return DragIntN(label, v, 2, v_speed, v_min, v_max, display_format);
}

bool ImGui::DragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* display_format)
{
    return DragIntN(label, v, 3, v_speed, v_min, v_max, display_format);
}

bool ImGui::DragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* display_format)
{
    return DragIntN(label, v, 4, v_speed, v_min, v_max, display_format);
}

bool ImGui::DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* display_format, const char* display_format_max)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    PushID(label);
    BeginGroup();
    PushMultiItemsWidths(2);

    bool value_changed = DragInt("##min", v_current_min, v_speed, (v_min >= v_max) ? (-2147483647 - 1) : v_min, (v_min >= v_max) ? *v_current_max : ImMin(v_max, *v_current_max), display_format);
    PopItemWidth();
    SameLine(0, g.Style.ItemInnerSpacing.x);
    value_changed |= DragInt("##max", v_current_max, v_speed, (v_min >= v_max) ? *v_current_min : ImMax(v_min, *v_current_min), (v_min >= v_max) ? 2147483647 : v_max, display_format_max ? display_format_max : display_format);
    PopItemWidth();
    SameLine(0, g.Style.ItemInnerSpacing.x);

    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();
    PopID();

    return value_changed;
}

void ImGui::PlotEx(ImGuiPlotType plot_type, const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    if (graph_size.x == 0.0f)
        graph_size.x = CalcItemWidth();
    if (graph_size.y == 0.0f)
        graph_size.y = label_size.y + (style.FramePadding.y * 2);

    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(graph_size.x, graph_size.y));
    const ImRect inner_bb(frame_bb.Min + style.FramePadding, frame_bb.Max - style.FramePadding);
    const ImRect total_bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0));
    ItemSize(total_bb, style.FramePadding.y);
    if (!ItemAdd(total_bb, 0))
        return;

    
    if (scale_min == 3.402823466e+38F || scale_max == 3.402823466e+38F)
    {
        float v_min = 3.402823466e+38F;
        float v_max = -3.402823466e+38F;
        for (int i = 0; i < values_count; i++)
        {
            const float v = values_getter(data, i);
            v_min = ImMin(v_min, v);
            v_max = ImMax(v_max, v);
        }
        if (scale_min == 3.402823466e+38F)
            scale_min = v_min;
        if (scale_max == 3.402823466e+38F)
            scale_max = v_max;
    }

    RenderFrame(frame_bb.Min, frame_bb.Max, GetColorU32(ImGuiCol_FrameBg), true, style.FrameRounding);

    if (values_count > 0)
    {
        int res_w = ImMin((int)graph_size.x, values_count) + ((plot_type == ImGuiPlotType_Lines) ? -1 : 0);
        int item_count = values_count + ((plot_type == ImGuiPlotType_Lines) ? -1 : 0);

        
        int v_hovered = -1;
        if (IsHovered(inner_bb, 0))
        {
            const float t = ImClamp((g.IO.MousePos.x - inner_bb.Min.x) / (inner_bb.Max.x - inner_bb.Min.x), 0.0f, 0.9999f);
            const int v_idx = (int)(t * item_count);
            (void)( (!!(v_idx >= 0 && v_idx < values_count)) || (_wassert(L"v_idx >= 0 && v_idx < values_count", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7157)), 0) );

            const float v0 = values_getter(data, (v_idx + values_offset) % values_count);
            const float v1 = values_getter(data, (v_idx + 1 + values_offset) % values_count);
            if (plot_type == ImGuiPlotType_Lines)
                SetTooltip("%d: %8.4g\n%d: %8.4g", v_idx, v0, v_idx+1, v1);
            else if (plot_type == ImGuiPlotType_Histogram)
                SetTooltip("%d: %8.4g", v_idx, v0);
            v_hovered = v_idx;
        }

        const float t_step = 1.0f / (float)res_w;

        float v0 = values_getter(data, (0 + values_offset) % values_count);
        float t0 = 0.0f;
        ImVec2 tp0 = ImVec2( t0, 1.0f - ImSaturate((v0 - scale_min) / (scale_max - scale_min)) );    

        const ImU32 col_base = GetColorU32((plot_type == ImGuiPlotType_Lines) ? ImGuiCol_PlotLines : ImGuiCol_PlotHistogram);
        const ImU32 col_hovered = GetColorU32((plot_type == ImGuiPlotType_Lines) ? ImGuiCol_PlotLinesHovered : ImGuiCol_PlotHistogramHovered);

        for (int n = 0; n < res_w; n++)
        {
            const float t1 = t0 + t_step;
            const int v1_idx = (int)(t0 * item_count + 0.5f);
            (void)( (!!(v1_idx >= 0 && v1_idx < values_count)) || (_wassert(L"v1_idx >= 0 && v1_idx < values_count", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7181)), 0) );
            const float v1 = values_getter(data, (v1_idx + values_offset + 1) % values_count);
            const ImVec2 tp1 = ImVec2( t1, 1.0f - ImSaturate((v1 - scale_min) / (scale_max - scale_min)) );

            
            ImVec2 pos0 = ImLerp(inner_bb.Min, inner_bb.Max, tp0);
            ImVec2 pos1 = ImLerp(inner_bb.Min, inner_bb.Max, (plot_type == ImGuiPlotType_Lines) ? tp1 : ImVec2(tp1.x, 1.0f));
            if (plot_type == ImGuiPlotType_Lines)
            {
                window->DrawList->AddLine(pos0, pos1, v_hovered == v1_idx ? col_hovered : col_base);
            }
            else if (plot_type == ImGuiPlotType_Histogram)
            {
                if (pos1.x >= pos0.x + 2.0f)
                    pos1.x -= 1.0f;
                window->DrawList->AddRectFilled(pos0, pos1, v_hovered == v1_idx ? col_hovered : col_base);
            }

            t0 = t1;
            tp0 = tp1;
        }
    }

    
    if (overlay_text)
        RenderTextClipped(ImVec2(frame_bb.Min.x, frame_bb.Min.y + style.FramePadding.y), frame_bb.Max, overlay_text, 0, 0, ImVec2(0.5f,0.0f));

    if (label_size.x > 0.0f)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, inner_bb.Min.y), label);
}

struct ImGuiPlotArrayGetterData
{
    const float* Values;
    int Stride;

    ImGuiPlotArrayGetterData(const float* values, int stride) { Values = values; Stride = stride; }
};

static float Plot_ArrayGetter(void* data, int idx)
{
    ImGuiPlotArrayGetterData* plot_data = (ImGuiPlotArrayGetterData*)data;
    const float v = *(float*)(void*)((unsigned char*)plot_data->Values + (size_t)idx * plot_data->Stride);
    return v;
}

void ImGui::PlotLines(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride)
{
    ImGuiPlotArrayGetterData data(values, stride);
    PlotEx(ImGuiPlotType_Lines, label, &Plot_ArrayGetter, (void*)&data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size);
}

void ImGui::PlotLines(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size)
{
    PlotEx(ImGuiPlotType_Lines, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size);
}

void ImGui::PlotHistogram(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride)
{
    ImGuiPlotArrayGetterData data(values, stride);
    PlotEx(ImGuiPlotType_Histogram, label, &Plot_ArrayGetter, (void*)&data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size);
}

void ImGui::PlotHistogram(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size)
{
    PlotEx(ImGuiPlotType_Histogram, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size);
}


void ImGui::ProgressBar(float fraction, const ImVec2& size_arg, const char* overlay)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    ImVec2 pos = window->DC.CursorPos;
    ImRect bb(pos, pos + CalcItemSize(size_arg, CalcItemWidth(), g.FontSize + style.FramePadding.y*2.0f));
    ItemSize(bb, style.FramePadding.y);
    if (!ItemAdd(bb, 0))
        return;

    
    fraction = ImSaturate(fraction);
    RenderFrame(bb.Min, bb.Max, GetColorU32(ImGuiCol_FrameBg), true, style.FrameRounding);
    bb.Reduce(ImVec2(window->BorderSize, window->BorderSize));
    const ImVec2 fill_br = ImVec2(ImLerp(bb.Min.x, bb.Max.x, fraction), bb.Max.y);
    RenderFrame(bb.Min, fill_br, GetColorU32(ImGuiCol_PlotHistogram), false, style.FrameRounding);

    
    char overlay_buf[32];
    if (!overlay)
    {
        ImFormatString(overlay_buf, ((int)(sizeof(overlay_buf)/sizeof(*overlay_buf))), "%.0f%%", fraction*100+0.01f);
        overlay = overlay_buf;
    }

    ImVec2 overlay_size = CalcTextSize(overlay, 0);
    if (overlay_size.x > 0.0f)
        RenderTextClipped(ImVec2(ImClamp(fill_br.x + style.ItemSpacing.x, bb.Min.x, bb.Max.x - overlay_size.x - style.ItemInnerSpacing.x), bb.Min.y), bb.Max, overlay, 0, &overlay_size, ImVec2(0.0f,0.5f), &bb);
}

bool ImGui::Checkbox(const char* label, bool* v)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const ImVec2 label_size = CalcTextSize(label, 0, true);

    const ImRect check_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(label_size.y + style.FramePadding.y*2, label_size.y + style.FramePadding.y*2));
    ItemSize(check_bb, style.FramePadding.y);

    ImRect total_bb = check_bb;
    if (label_size.x > 0)
        SameLine(0, style.ItemInnerSpacing.x);
    const ImRect text_bb(window->DC.CursorPos + ImVec2(0,style.FramePadding.y), window->DC.CursorPos + ImVec2(0,style.FramePadding.y) + label_size);
    if (label_size.x > 0)
    {
        ItemSize(ImVec2(text_bb.GetWidth(), check_bb.GetHeight()), style.FramePadding.y);
        total_bb = ImRect(ImMin(check_bb.Min, text_bb.Min), ImMax(check_bb.Max, text_bb.Max));
    }

    if (!ItemAdd(total_bb, &id))
        return false;

    bool hovered, held;
    bool pressed = ButtonBehavior(total_bb, id, &hovered, &held);
    if (pressed)
        *v = !(*v);

    RenderFrame(check_bb.Min, check_bb.Max, GetColorU32((held && hovered) ? ImGuiCol_FrameBgActive : hovered ? ImGuiCol_FrameBgHovered : ImGuiCol_FrameBg), true, style.FrameRounding);
    if (*v)
    {
        const float check_sz = ImMin(check_bb.GetWidth(), check_bb.GetHeight());
        const float pad = ImMax(1.0f, (float)(int)(check_sz / 6.0f));
        window->DrawList->AddRectFilled(check_bb.Min+ImVec2(pad,pad), check_bb.Max-ImVec2(pad,pad), GetColorU32(ImGuiCol_CheckMark), style.FrameRounding);
    }

    if (g.LogEnabled)
        LogRenderedText(text_bb.GetTL(), *v ? "[x]" : "[ ]");
    if (label_size.x > 0.0f)
        RenderText(text_bb.GetTL(), label);

    return pressed;
}

bool ImGui::CheckboxFlags(const char* label, unsigned int* flags, unsigned int flags_value)
{
    bool v = ((*flags & flags_value) == flags_value);
    bool pressed = Checkbox(label, &v);
    if (pressed)
    {
        if (v)
            *flags |= flags_value;
        else
            *flags &= ~flags_value;
    }

    return pressed;
}

bool ImGui::RadioButton(const char* label, bool active)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const ImVec2 label_size = CalcTextSize(label, 0, true);

    const ImRect check_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(label_size.y + style.FramePadding.y*2-1, label_size.y + style.FramePadding.y*2-1));
    ItemSize(check_bb, style.FramePadding.y);

    ImRect total_bb = check_bb;
    if (label_size.x > 0)
        SameLine(0, style.ItemInnerSpacing.x);
    const ImRect text_bb(window->DC.CursorPos + ImVec2(0, style.FramePadding.y), window->DC.CursorPos + ImVec2(0, style.FramePadding.y) + label_size);
    if (label_size.x > 0)
    {
        ItemSize(ImVec2(text_bb.GetWidth(), check_bb.GetHeight()), style.FramePadding.y);
        total_bb.Add(text_bb);
    }

    if (!ItemAdd(total_bb, &id))
        return false;

    ImVec2 center = check_bb.GetCenter();
    center.x = (float)(int)center.x + 0.5f;
    center.y = (float)(int)center.y + 0.5f;
    const float radius = check_bb.GetHeight() * 0.5f;

    bool hovered, held;
    bool pressed = ButtonBehavior(total_bb, id, &hovered, &held);

    window->DrawList->AddCircleFilled(center, radius, GetColorU32((held && hovered) ? ImGuiCol_FrameBgActive : hovered ? ImGuiCol_FrameBgHovered : ImGuiCol_FrameBg), 16);
    if (active)
    {
        const float check_sz = ImMin(check_bb.GetWidth(), check_bb.GetHeight());
        const float pad = ImMax(1.0f, (float)(int)(check_sz / 6.0f));
        window->DrawList->AddCircleFilled(center, radius-pad, GetColorU32(ImGuiCol_CheckMark), 16);
    }

    if (window->Flags & ImGuiWindowFlags_ShowBorders)
    {
        window->DrawList->AddCircle(center+ImVec2(1,1), radius, GetColorU32(ImGuiCol_BorderShadow), 16);
        window->DrawList->AddCircle(center, radius, GetColorU32(ImGuiCol_Border), 16);
    }

    if (g.LogEnabled)
        LogRenderedText(text_bb.GetTL(), active ? "(x)" : "( )");
    if (label_size.x > 0.0f)
        RenderText(text_bb.GetTL(), label);

    return pressed;
}

bool ImGui::RadioButton(const char* label, int* v, int v_button)
{
    const bool pressed = RadioButton(label, *v == v_button);
    if (pressed)
    {
        *v = v_button;
    }
    return pressed;
}

static int InputTextCalcTextLenAndLineCount(const char* text_begin, const char** out_text_end)
{
    int line_count = 0;
    const char* s = text_begin;
    while (char c = *s++) 
        if (c == '\n')
            line_count++;
    s--;
    if (s[0] != '\n' && s[0] != '\r')
        line_count++;
    *out_text_end = s;
    return line_count;
}

static ImVec2 InputTextCalcTextSizeW(const ImWchar* text_begin, const ImWchar* text_end, const ImWchar** remaining, ImVec2* out_offset, bool stop_on_new_line)
{
    ImFont* font = GImGui->Font;
    const float line_height = GImGui->FontSize;
    const float scale = line_height / font->FontSize;

    ImVec2 text_size = ImVec2(0,0);
    float line_width = 0.0f;

    const ImWchar* s = text_begin;
    while (s < text_end)
    {
        unsigned int c = (unsigned int)(*s++);
        if (c == '\n')
        {
            text_size.x = ImMax(text_size.x, line_width);
            text_size.y += line_height;
            line_width = 0.0f;
            if (stop_on_new_line)
                break;
            continue;
        }
        if (c == '\r')
            continue;

        const float char_width = font->GetCharAdvance((unsigned short)c) * scale;
        line_width += char_width;
    }

    if (text_size.x < line_width)
        text_size.x = line_width;

    if (out_offset)
        *out_offset = ImVec2(line_width, text_size.y + line_height);  

    if (line_width > 0 || text_size.y == 0.0f)                        
        text_size.y += line_height;

    if (remaining)
        *remaining = s;

    return text_size;
}


namespace ImGuiStb
{

static int     STB_TEXTEDIT_STRINGLEN(const ImGuiTextEditState* obj)                             { return obj->CurLenW; }
static ImWchar STB_TEXTEDIT_GETCHAR(const ImGuiTextEditState* obj, int idx)                      { return obj->Text[idx]; }
static float   STB_TEXTEDIT_GETWIDTH(ImGuiTextEditState* obj, int line_start_idx, int char_idx)  { ImWchar c = obj->Text[line_start_idx+char_idx]; if (c == '\n') return -1.0f; return GImGui->Font->GetCharAdvance(c) * (GImGui->FontSize / GImGui->Font->FontSize); }
static int     STB_TEXTEDIT_KEYTOTEXT(int key)                                                    { return key >= 0x10000 ? 0 : key; }
static ImWchar STB_TEXTEDIT_NEWLINE = '\n';
static void    STB_TEXTEDIT_LAYOUTROW(StbTexteditRow* r, ImGuiTextEditState* obj, int line_start_idx)
{
    const ImWchar* text = obj->Text.Data;
    const ImWchar* text_remaining = 0;
    const ImVec2 size = InputTextCalcTextSizeW(text + line_start_idx, text + obj->CurLenW, &text_remaining, 0, true);
    r->x0 = 0.0f;
    r->x1 = size.x;
    r->baseline_y_delta = size.y;
    r->ymin = 0.0f;
    r->ymax = size.y;
    r->num_chars = (int)(text_remaining - (text + line_start_idx));
}

static bool is_separator(unsigned int c)                                        { return ImCharIsSpace(c) || c==',' || c==';' || c=='(' || c==')' || c=='{' || c=='}' || c=='[' || c==']' || c=='|'; }
static int  is_word_boundary_from_right(ImGuiTextEditState* obj, int idx)      { return idx > 0 ? (is_separator( obj->Text[idx-1] ) && !is_separator( obj->Text[idx] ) ) : 1; }
static int  STB_TEXTEDIT_MOVEWORDLEFT_IMPL(ImGuiTextEditState* obj, int idx)   { idx--; while (idx >= 0 && !is_word_boundary_from_right(obj, idx)) idx--; return idx < 0 ? 0 : idx; }




static int  STB_TEXTEDIT_MOVEWORDRIGHT_IMPL(ImGuiTextEditState* obj, int idx)  { idx++; int len = obj->CurLenW; while (idx < len && !is_word_boundary_from_right(obj, idx)) idx++; return idx > len ? len : idx; }
#line 7504 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"



static void STB_TEXTEDIT_DELETECHARS(ImGuiTextEditState* obj, int pos, int n)
{
    ImWchar* dst = obj->Text.Data + pos;

    
    obj->CurLenA -= ImTextCountUtf8BytesFromStr(dst, dst + n);
    obj->CurLenW -= n;

    
    const ImWchar* src = obj->Text.Data + pos + n;
    while (ImWchar c = *src++)
        *dst++ = c;
    *dst = '\0';
}

static bool STB_TEXTEDIT_INSERTCHARS(ImGuiTextEditState* obj, int pos, const ImWchar* new_text, int new_text_len)
{
    const int text_len = obj->CurLenW;
    (void)( (!!(pos <= text_len)) || (_wassert(L"pos <= text_len", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7525)), 0) );
    if (new_text_len + text_len + 1 > obj->Text.Size)
        return false;

    const int new_text_len_utf8 = ImTextCountUtf8BytesFromStr(new_text, new_text + new_text_len);
    if (new_text_len_utf8 + obj->CurLenA + 1 > obj->BufSizeA)
        return false;

    ImWchar* text = obj->Text.Data;
    if (pos != text_len)
        memmove(text + pos + new_text_len, text + pos, (size_t)(text_len - pos) * sizeof(ImWchar));
    memcpy(text + pos, new_text, (size_t)new_text_len * sizeof(ImWchar));

    obj->CurLenW += new_text_len;
    obj->CurLenA += new_text_len_utf8;
    obj->Text[obj->CurLenW] = '\0';

    return true;
}



















#line 1 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"





























































































































































































































































































































































































#line 383 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"








static int stb_text_locate_coord(ImGuiTextEditState *str, float x, float y)
{
   StbTexteditRow r;
   int n = STB_TEXTEDIT_STRINGLEN(str);
   float base_y = 0, prev_x;
   int i=0, k;

   r.x0 = r.x1 = 0;
   r.ymin = r.ymax = 0;
   r.num_chars = 0;

   
   while (i < n) {
      STB_TEXTEDIT_LAYOUTROW(&r, str, i);
      if (r.num_chars <= 0)
         return n;

      if (i==0 && y < base_y + r.ymin)
         return 0;

      if (y < base_y + r.ymax)
         break;

      i += r.num_chars;
      base_y += r.baseline_y_delta;
   }

   
   if (i >= n)
      return n;

   
   if (x < r.x0)
      return i;

   
   if (x < r.x1) {
      
      prev_x = r.x0;
      for (k=0; k < r.num_chars; ++k) {
         float w = STB_TEXTEDIT_GETWIDTH(str, i, k);
         if (x < prev_x+w) {
            if (x < prev_x+w/2)
               return k+i;
            else
               return k+i+1;
         }
         prev_x += w;
      }
      
   }

   
   if (STB_TEXTEDIT_GETCHAR(str, i+r.num_chars-1) == STB_TEXTEDIT_NEWLINE)
      return i+r.num_chars-1;
   else
      return i+r.num_chars;
}


static void stb_textedit_click(ImGuiTextEditState *str, STB_TexteditState *state, float x, float y)
{
   state->cursor = stb_text_locate_coord(str, x, y);
   state->select_start = state->cursor;
   state->select_end = state->cursor;
   state->has_preferred_x = 0;
}


static void stb_textedit_drag(ImGuiTextEditState *str, STB_TexteditState *state, float x, float y)
{
   int p = stb_text_locate_coord(str, x, y);
   if (state->select_start == state->select_end)
      state->select_start = state->cursor;
   state->cursor = state->select_end = p;
}







static void stb_text_undo(ImGuiTextEditState *str, STB_TexteditState *state);
static void stb_text_redo(ImGuiTextEditState *str, STB_TexteditState *state);
static void stb_text_makeundo_delete(ImGuiTextEditState *str, STB_TexteditState *state, int where, int length);
static void stb_text_makeundo_insert(STB_TexteditState *state, int where, int length);
static void stb_text_makeundo_replace(ImGuiTextEditState *str, STB_TexteditState *state, int where, int old_length, int new_length);

typedef struct
{
   float x,y;    
   float height; 
   int first_char, length; 
   int prev_first;  
} StbFindState;



static void stb_textedit_find_charpos(StbFindState *find, ImGuiTextEditState *str, int n, int single_line)
{
   StbTexteditRow r;
   int prev_start = 0;
   int z = STB_TEXTEDIT_STRINGLEN(str);
   int i=0, first;

   if (n == z) {
      
      
      if (single_line) {
         STB_TEXTEDIT_LAYOUTROW(&r, str, 0);
         find->y = 0;
         find->first_char = 0;
         find->length = z;
         find->height = r.ymax - r.ymin;
         find->x = r.x1;
      } else {
         find->y = 0;
         find->x = 0;
         find->height = 1;
         while (i < z) {
            STB_TEXTEDIT_LAYOUTROW(&r, str, i);
            prev_start = i;
            i += r.num_chars;
         }
         find->first_char = i;
         find->length = 0;
         find->prev_first = prev_start;
      }
      return;
   }

   
   find->y = 0;

   for(;;) {
      STB_TEXTEDIT_LAYOUTROW(&r, str, i);
      if (n < i + r.num_chars)
         break;
      prev_start = i;
      i += r.num_chars;
      find->y += r.baseline_y_delta;
   }

   find->first_char = first = i;
   find->length = r.num_chars;
   find->height = r.ymax - r.ymin;
   find->prev_first = prev_start;

   
   find->x = r.x0;
   i = 0;
   for (i=0; first+i < n; ++i)
      find->x += STB_TEXTEDIT_GETWIDTH(str, first, i);
}




static void stb_textedit_clamp(ImGuiTextEditState *str, STB_TexteditState *state)
{
   int n = STB_TEXTEDIT_STRINGLEN(str);
   if (((state)->select_start != (state)->select_end)) {
      if (state->select_start > n) state->select_start = n;
      if (state->select_end   > n) state->select_end = n;
      
      if (state->select_start == state->select_end)
         state->cursor = state->select_start;
   }
   if (state->cursor > n) state->cursor = n;
}


static void stb_textedit_delete(ImGuiTextEditState *str, STB_TexteditState *state, int where, int len)
{
   stb_text_makeundo_delete(str, state, where, len);
   STB_TEXTEDIT_DELETECHARS(str, where, len);
   state->has_preferred_x = 0;
}


static void stb_textedit_delete_selection(ImGuiTextEditState *str, STB_TexteditState *state)
{
   stb_textedit_clamp(str, state);
   if (((state)->select_start != (state)->select_end)) {
      if (state->select_start < state->select_end) {
         stb_textedit_delete(str, state, state->select_start, state->select_end - state->select_start);
         state->select_end = state->cursor = state->select_start;
      } else {
         stb_textedit_delete(str, state, state->select_end, state->select_start - state->select_end);
         state->select_start = state->cursor = state->select_end;
      }
      state->has_preferred_x = 0;
   }
}


static void stb_textedit_sortselection(STB_TexteditState *state)
{
   if (state->select_end < state->select_start) {
      int temp = state->select_end;
      state->select_end = state->select_start;
      state->select_start = temp;
   }
}


static void stb_textedit_move_to_first(STB_TexteditState *state)
{
   if (((state)->select_start != (state)->select_end)) {
      stb_textedit_sortselection(state);
      state->cursor = state->select_start;
      state->select_end = state->select_start;
      state->has_preferred_x = 0;
   }
}


static void stb_textedit_move_to_last(ImGuiTextEditState *str, STB_TexteditState *state)
{
   if (((state)->select_start != (state)->select_end)) {
      stb_textedit_sortselection(state);
      stb_textedit_clamp(str, state);
      state->cursor = state->select_end;
      state->select_start = state->select_end;
      state->has_preferred_x = 0;
   }
}









































static void stb_textedit_prep_selection_at_cursor(STB_TexteditState *state)
{
   if (!((state)->select_start != (state)->select_end))
      state->select_start = state->select_end = state->cursor;
   else
      state->cursor = state->select_end;
}


static int stb_textedit_cut(ImGuiTextEditState *str, STB_TexteditState *state)
{
   if (((state)->select_start != (state)->select_end)) {
      stb_textedit_delete_selection(str,state); 
      state->has_preferred_x = 0;
      return 1;
   }
   return 0;
}


static int stb_textedit_paste(ImGuiTextEditState *str, STB_TexteditState *state, ImWchar const *ctext, int len)
{
   ImWchar *text = (ImWchar *) ctext;
   
   stb_textedit_clamp(str, state);
   stb_textedit_delete_selection(str,state);
   
   if (STB_TEXTEDIT_INSERTCHARS(str, state->cursor, text, len)) {
      stb_text_makeundo_insert(state, state->cursor, len);
      state->cursor += len;
      state->has_preferred_x = 0;
      return 1;
   }
   
   if (state->undostate.undo_point)
      --state->undostate.undo_point;
   return 0;
}


static void stb_textedit_key(ImGuiTextEditState *str, STB_TexteditState *state, int key)
{
retry:
   switch (key) {
      default: {
         int c = STB_TEXTEDIT_KEYTOTEXT(key);
         if (c > 0) {
            ImWchar ch = (ImWchar) c;

            
            if (c == '\n' && state->single_line)
               break;

            if (state->insert_mode && !((state)->select_start != (state)->select_end) && state->cursor < STB_TEXTEDIT_STRINGLEN(str)) {
               stb_text_makeundo_replace(str, state, state->cursor, 1, 1);
               STB_TEXTEDIT_DELETECHARS(str, state->cursor, 1);
               if (STB_TEXTEDIT_INSERTCHARS(str, state->cursor, &ch, 1)) {
                  ++state->cursor;
                  state->has_preferred_x = 0;
               }
            } else {
               stb_textedit_delete_selection(str,state); 
               if (STB_TEXTEDIT_INSERTCHARS(str, state->cursor, &ch, 1)) {
                  stb_text_makeundo_insert(state, state->cursor, 1);
                  ++state->cursor;
                  state->has_preferred_x = 0;
               }
            }
         }
         break;
      }






         
      case 0x1000A:
         stb_text_undo(str, state);
         state->has_preferred_x = 0;
         break;

      case 0x1000B:
         stb_text_redo(str, state);
         state->has_preferred_x = 0;
         break;

      case 0x10000:
         
         if (((state)->select_start != (state)->select_end))
            stb_textedit_move_to_first(state);
         else 
            if (state->cursor > 0)
               --state->cursor;
         state->has_preferred_x = 0;
         break;

      case 0x10001:
         
         if (((state)->select_start != (state)->select_end))
            stb_textedit_move_to_last(str, state);
         else
            ++state->cursor;
         stb_textedit_clamp(str, state);
         state->has_preferred_x = 0;
         break;

      case 0x10000 | 0x20000:
         stb_textedit_clamp(str, state);
         stb_textedit_prep_selection_at_cursor(state);
         
         if (state->select_end > 0)
            --state->select_end;
         state->cursor = state->select_end;
         state->has_preferred_x = 0;
         break;


      case 0x1000C:
         if (((state)->select_start != (state)->select_end))
            stb_textedit_move_to_first(state);
         else {
            state->cursor = STB_TEXTEDIT_MOVEWORDLEFT_IMPL(str, state->cursor);
            stb_textedit_clamp( str, state );
         }
         break;

      case 0x1000C | 0x20000:
         if( !((state)->select_start != (state)->select_end) )
            stb_textedit_prep_selection_at_cursor(state);

         state->cursor = STB_TEXTEDIT_MOVEWORDLEFT_IMPL(str, state->cursor);
         state->select_end = state->cursor;

         stb_textedit_clamp( str, state );
         break;
#line 798 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"


      case 0x1000D:
         if (((state)->select_start != (state)->select_end)) 
            stb_textedit_move_to_last(str, state);
         else {
            state->cursor = STB_TEXTEDIT_MOVEWORDRIGHT_IMPL(str, state->cursor);
            stb_textedit_clamp( str, state );
         }
         break;

      case 0x1000D | 0x20000:
         if( !((state)->select_start != (state)->select_end) )
            stb_textedit_prep_selection_at_cursor(state);

         state->cursor = STB_TEXTEDIT_MOVEWORDRIGHT_IMPL(str, state->cursor);
         state->select_end = state->cursor;

         stb_textedit_clamp( str, state );
         break;
#line 819 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"

      case 0x10001 | 0x20000:
         stb_textedit_prep_selection_at_cursor(state);
         
         ++state->select_end;
         stb_textedit_clamp(str, state);
         state->cursor = state->select_end;
         state->has_preferred_x = 0;
         break;

      case 0x10003:
      case 0x10003 | 0x20000: {
         StbFindState find;
         StbTexteditRow row;
         int i, sel = (key & 0x20000) != 0;

         if (state->single_line) {
            
            key = 0x10001 | (key & 0x20000);
            goto retry;
         }

         if (sel)
            stb_textedit_prep_selection_at_cursor(state);
         else if (((state)->select_start != (state)->select_end))
            stb_textedit_move_to_last(str,state);

         
         stb_textedit_clamp(str, state);
         stb_textedit_find_charpos(&find, str, state->cursor, state->single_line);

         
         if (find.length) {
            float goal_x = state->has_preferred_x ? state->preferred_x : find.x;
            float x;
            int start = find.first_char + find.length;
            state->cursor = start;
            STB_TEXTEDIT_LAYOUTROW(&row, str, state->cursor);
            x = row.x0;
            for (i=0; i < row.num_chars; ++i) {
               float dx = STB_TEXTEDIT_GETWIDTH(str, start, i);
               
               if (dx == -1.0f)
                  break;
               #line 864 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"
               x += dx;
               if (x > goal_x)
                  break;
               ++state->cursor;
            }
            stb_textedit_clamp(str, state);

            state->has_preferred_x = 1;
            state->preferred_x = goal_x;

            if (sel)
               state->select_end = state->cursor;
         }
         break;
      }
         
      case 0x10002:
      case 0x10002 | 0x20000: {
         StbFindState find;
         StbTexteditRow row;
         int i, sel = (key & 0x20000) != 0;

         if (state->single_line) {
            
            key = 0x10000 | (key & 0x20000);
            goto retry;
         }

         if (sel)
            stb_textedit_prep_selection_at_cursor(state);
         else if (((state)->select_start != (state)->select_end))
            stb_textedit_move_to_first(state);

         
         stb_textedit_clamp(str, state);
         stb_textedit_find_charpos(&find, str, state->cursor, state->single_line);

         
         if (find.prev_first != find.first_char) {
            
            float goal_x = state->has_preferred_x ? state->preferred_x : find.x;
            float x;
            state->cursor = find.prev_first;
            STB_TEXTEDIT_LAYOUTROW(&row, str, state->cursor);
            x = row.x0;
            for (i=0; i < row.num_chars; ++i) {
               float dx = STB_TEXTEDIT_GETWIDTH(str, find.prev_first, i);
               
               if (dx == -1.0f)
                  break;
               #line 915 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"
               x += dx;
               if (x > goal_x)
                  break;
               ++state->cursor;
            }
            stb_textedit_clamp(str, state);

            state->has_preferred_x = 1;
            state->preferred_x = goal_x;

            if (sel)
               state->select_end = state->cursor;
         }
         break;
      }

      case 0x10008:
      case 0x10008 | 0x20000:
         if (((state)->select_start != (state)->select_end))
            stb_textedit_delete_selection(str, state);
         else {
            int n = STB_TEXTEDIT_STRINGLEN(str);
            if (state->cursor < n)
               stb_textedit_delete(str, state, state->cursor, 1);
         }
         state->has_preferred_x = 0;
         break;

      case 0x10009:
      case 0x10009 | 0x20000:
         if (((state)->select_start != (state)->select_end))
            stb_textedit_delete_selection(str, state);
         else {
            stb_textedit_clamp(str, state);
            if (state->cursor > 0) {
               stb_textedit_delete(str, state, state->cursor-1, 1);
               --state->cursor;
            }
         }
         state->has_preferred_x = 0;
         break;
         



      case 0x10006:
         state->cursor = state->select_start = state->select_end = 0;
         state->has_preferred_x = 0;
         break;




      case 0x10007:
         state->cursor = STB_TEXTEDIT_STRINGLEN(str);
         state->select_start = state->select_end = 0;
         state->has_preferred_x = 0;
         break;
        



      case 0x10006 | 0x20000:
         stb_textedit_prep_selection_at_cursor(state);
         state->cursor = state->select_end = 0;
         state->has_preferred_x = 0;
         break;




      case 0x10007 | 0x20000:
         stb_textedit_prep_selection_at_cursor(state);
         state->cursor = state->select_end = STB_TEXTEDIT_STRINGLEN(str);
         state->has_preferred_x = 0;
         break;





      case 0x10004:
         stb_textedit_clamp(str, state);
         stb_textedit_move_to_first(state);
         if (state->single_line)
            state->cursor = 0;
         else while (state->cursor > 0 && STB_TEXTEDIT_GETCHAR(str, state->cursor-1) != STB_TEXTEDIT_NEWLINE)
            --state->cursor;
         state->has_preferred_x = 0;
         break;




      case 0x10005: {
         int n = STB_TEXTEDIT_STRINGLEN(str);
         stb_textedit_clamp(str, state);
         stb_textedit_move_to_first(state);
         if (state->single_line)
             state->cursor = n;
         else while (state->cursor < n && STB_TEXTEDIT_GETCHAR(str, state->cursor) != STB_TEXTEDIT_NEWLINE)
             ++state->cursor;
         state->has_preferred_x = 0;
         break;
      }




      case 0x10004 | 0x20000:
         stb_textedit_clamp(str, state);
         stb_textedit_prep_selection_at_cursor(state);
         if (state->single_line)
            state->cursor = 0;
         else while (state->cursor > 0 && STB_TEXTEDIT_GETCHAR(str, state->cursor-1) != STB_TEXTEDIT_NEWLINE)
            --state->cursor;
         state->select_end = state->cursor;
         state->has_preferred_x = 0;
         break;




      case 0x10005 | 0x20000: {
         int n = STB_TEXTEDIT_STRINGLEN(str);
         stb_textedit_clamp(str, state);
         stb_textedit_prep_selection_at_cursor(state);
         if (state->single_line)
             state->cursor = n;
         else while (state->cursor < n && STB_TEXTEDIT_GETCHAR(str, state->cursor) != STB_TEXTEDIT_NEWLINE)
            ++state->cursor;
         state->select_end = state->cursor;
         state->has_preferred_x = 0;
         break;
      }




   }
}







static void stb_textedit_flush_redo(StbUndoState *state)
{
   state->redo_point = 99;
   state->redo_char_point = 999;
}


static void stb_textedit_discard_undo(StbUndoState *state)
{
   if (state->undo_point > 0) {
      
      if (state->undo_rec[0].char_storage >= 0) {
         int n = state->undo_rec[0].insert_length, i;
         
         state->undo_char_point = state->undo_char_point - (short) n;  
         memmove(state->undo_char, state->undo_char + n, (size_t) ((size_t)state->undo_char_point*sizeof(ImWchar)));
         for (i=0; i < state->undo_point; ++i)
            if (state->undo_rec[i].char_storage >= 0)
               state->undo_rec[i].char_storage = state->undo_rec[i].char_storage - (short) n; 
      }
      --state->undo_point;
      memmove(state->undo_rec, state->undo_rec+1, (size_t) ((size_t)state->undo_point*sizeof(state->undo_rec[0])));
   }
}





static void stb_textedit_discard_redo(StbUndoState *state)
{
   int k = 99-1;

   if (state->redo_point <= k) {
      
      if (state->undo_rec[k].char_storage >= 0) {
         int n = state->undo_rec[k].insert_length, i;
         
         state->redo_char_point = state->redo_char_point + (short) n; 
         memmove(state->undo_char + state->redo_char_point, state->undo_char + state->redo_char_point-n, (size_t) ((size_t)(999 - state->redo_char_point)*sizeof(ImWchar)));
         for (i=state->redo_point; i < k; ++i)
            if (state->undo_rec[i].char_storage >= 0)
               state->undo_rec[i].char_storage = state->undo_rec[i].char_storage + (short) n; 
      }
      memmove(state->undo_rec + state->redo_point, state->undo_rec + state->redo_point-1, (size_t) ((size_t)(99 - state->redo_point)*sizeof(state->undo_rec[0])));
      ++state->redo_point;
   }
}

static StbUndoRecord *stb_text_create_undo_record(StbUndoState *state, int numchars)
{
   
   stb_textedit_flush_redo(state);

   
   
   if (state->undo_point == 99)
      stb_textedit_discard_undo(state);

   
   if (numchars > 999) {
      state->undo_point = 0;
      state->undo_char_point = 0;
      return 0;
   }

   
   while (state->undo_char_point + numchars > 999)
      stb_textedit_discard_undo(state);

   return &state->undo_rec[state->undo_point++];
}

static ImWchar *stb_text_createundo(StbUndoState *state, int pos, int insert_len, int delete_len)
{
   StbUndoRecord *r = stb_text_create_undo_record(state, insert_len);
   if (r == 0)
      return 0;

   r->where = pos;
   r->insert_length = (short) insert_len;
   r->delete_length = (short) delete_len;

   if (insert_len == 0) {
      r->char_storage = -1;
      return 0;
   } else {
      r->char_storage = state->undo_char_point;
      state->undo_char_point = state->undo_char_point + (short) insert_len;
      return &state->undo_char[r->char_storage];
   }
}

static void stb_text_undo(ImGuiTextEditState *str, STB_TexteditState *state)
{
   StbUndoState *s = &state->undostate;
   StbUndoRecord u, *r;
   if (s->undo_point == 0)
      return;

   
   u = s->undo_rec[s->undo_point-1];
   r = &s->undo_rec[s->redo_point-1];
   r->char_storage = -1;

   r->insert_length = u.delete_length;
   r->delete_length = u.insert_length;
   r->where = u.where;

   if (u.delete_length) {
      
      
      

      
      
      
      
      

      if (s->undo_char_point + u.delete_length >= 999) {
         
         r->insert_length = 0;
      } else {
         int i;

         
         while (s->undo_char_point + u.delete_length > s->redo_char_point) {
            
            stb_textedit_discard_redo(s);
            
            if (s->redo_point == 99)
               return;
         }
         r = &s->undo_rec[s->redo_point-1];

         r->char_storage = s->redo_char_point - u.delete_length;
         s->redo_char_point = s->redo_char_point - (short) u.delete_length;

         
         for (i=0; i < u.delete_length; ++i)
            s->undo_char[r->char_storage + i] = STB_TEXTEDIT_GETCHAR(str, u.where + i);
      }

      
      STB_TEXTEDIT_DELETECHARS(str, u.where, u.delete_length);
   }

   
   if (u.insert_length) {
      
      STB_TEXTEDIT_INSERTCHARS(str, u.where, &s->undo_char[u.char_storage], u.insert_length);
      s->undo_char_point -= u.insert_length;
   }

   state->cursor = u.where + u.insert_length;

   s->undo_point--;
   s->redo_point--;
}

static void stb_text_redo(ImGuiTextEditState *str, STB_TexteditState *state)
{
   StbUndoState *s = &state->undostate;
   StbUndoRecord *u, r;
   if (s->redo_point == 99)
      return;

   
   u = &s->undo_rec[s->undo_point];
   r = s->undo_rec[s->redo_point];

   
   

   u->delete_length = r.insert_length;
   u->insert_length = r.delete_length;
   u->where = r.where;
   u->char_storage = -1;

   if (r.delete_length) {
      
      

      if (s->undo_char_point + u->insert_length > s->redo_char_point) {
         u->insert_length = 0;
         u->delete_length = 0;
      } else {
         int i;
         u->char_storage = s->undo_char_point;
         s->undo_char_point = s->undo_char_point + u->insert_length;

         
         for (i=0; i < u->insert_length; ++i)
            s->undo_char[u->char_storage + i] = STB_TEXTEDIT_GETCHAR(str, u->where + i);
      }

      STB_TEXTEDIT_DELETECHARS(str, r.where, r.delete_length);
   }

   if (r.insert_length) {
      
      STB_TEXTEDIT_INSERTCHARS(str, r.where, &s->undo_char[r.char_storage], r.insert_length);
      s->redo_char_point += r.insert_length;
   }

   state->cursor = r.where + r.insert_length;

   s->undo_point++;
   s->redo_point++;
}

static void stb_text_makeundo_insert(STB_TexteditState *state, int where, int length)
{
   stb_text_createundo(&state->undostate, where, 0, length);
}

static void stb_text_makeundo_delete(ImGuiTextEditState *str, STB_TexteditState *state, int where, int length)
{
   int i;
   ImWchar *p = stb_text_createundo(&state->undostate, where, length, 0);
   if (p) {
      for (i=0; i < length; ++i)
         p[i] = STB_TEXTEDIT_GETCHAR(str, where+i);
   }
}

static void stb_text_makeundo_replace(ImGuiTextEditState *str, STB_TexteditState *state, int where, int old_length, int new_length)
{
   int i;
   ImWchar *p = stb_text_createundo(&state->undostate, where, old_length, new_length);
   if (p) {
      for (i=0; i < old_length; ++i)
         p[i] = STB_TEXTEDIT_GETCHAR(str, where+i);
   }
}


static void stb_textedit_clear_state(STB_TexteditState *state, int is_single_line)
{
   state->undostate.undo_point = 0;
   state->undostate.undo_char_point = 0;
   state->undostate.redo_point = 99;
   state->undostate.redo_char_point = 999;
   state->select_end = state->select_start = 0;
   state->cursor = 0;
   state->has_preferred_x = 0;
   state->preferred_x = 0;
   state->cursor_at_end_of_line = 0;
   state->initialized = 1;
   state->single_line = (unsigned char) is_single_line;
   state->insert_mode = 0;
}


static void stb_textedit_initialize_state(STB_TexteditState *state, int is_single_line)
{
   stb_textedit_clear_state(state, is_single_line);
}
#line 1323 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"
#line 7564 "c:\\biblioteki\\imgui-sfml\\imgui.cpp"

}

void ImGuiTextEditState::OnKeyPressed(int key)
{
    stb_textedit_key(this, &StbState, key);
    CursorFollow = true;
    CursorAnimReset();
}




void ImGuiTextEditCallbackData::DeleteChars(int pos, int bytes_count)
{
    (void)( (!!(pos + bytes_count <= BufTextLen)) || (_wassert(L"pos + bytes_count <= BufTextLen", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7579)), 0) );
    char* dst = Buf + pos;
    const char* src = Buf + pos + bytes_count;
    while (char c = *src++)
        *dst++ = c;
    *dst = '\0';

    if (CursorPos + bytes_count >= pos)
        CursorPos -= bytes_count;
    else if (CursorPos >= pos)
        CursorPos = pos;
    SelectionStart = SelectionEnd = CursorPos;
    BufDirty = true;
    BufTextLen -= bytes_count;
}

void ImGuiTextEditCallbackData::InsertChars(int pos, const char* new_text, const char* new_text_end)
{
    const int new_text_len = new_text_end ? (int)(new_text_end - new_text) : (int)strlen(new_text);
    if (new_text_len + BufTextLen + 1 >= BufSize)
        return;

    if (BufTextLen != pos)
        memmove(Buf + pos + new_text_len, Buf + pos, (size_t)(BufTextLen - pos));
    memcpy(Buf + pos, new_text, (size_t)new_text_len * sizeof(char));
    Buf[BufTextLen + new_text_len] = '\0';

    if (CursorPos >= pos)
        CursorPos += new_text_len;
    SelectionStart = SelectionEnd = CursorPos;
    BufDirty = true;
    BufTextLen += new_text_len;
}


static bool InputTextFilterCharacter(unsigned int* p_char, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data)
{
    unsigned int c = *p_char;

    if (c < 128 && c != ' ' && !isprint((int)(c & 0xFF)))
    {
        bool pass = false;
        pass |= (c == '\n' && (flags & ImGuiInputTextFlags_Multiline));
        pass |= (c == '\t' && (flags & ImGuiInputTextFlags_AllowTabInput));
        if (!pass)
            return false;
    }

    if (c >= 0xE000 && c <= 0xF8FF) 
        return false;

    if (flags & (ImGuiInputTextFlags_CharsDecimal | ImGuiInputTextFlags_CharsHexadecimal | ImGuiInputTextFlags_CharsUppercase | ImGuiInputTextFlags_CharsNoBlank))
    {
        if (flags & ImGuiInputTextFlags_CharsDecimal)
            if (!(c >= '0' && c <= '9') && (c != '.') && (c != '-') && (c != '+') && (c != '*') && (c != '/'))
                return false;

        if (flags & ImGuiInputTextFlags_CharsHexadecimal)
            if (!(c >= '0' && c <= '9') && !(c >= 'a' && c <= 'f') && !(c >= 'A' && c <= 'F'))
                return false;

        if (flags & ImGuiInputTextFlags_CharsUppercase)
            if (c >= 'a' && c <= 'z')
                *p_char = (c += (unsigned int)('A'-'a'));

        if (flags & ImGuiInputTextFlags_CharsNoBlank)
            if (ImCharIsSpace(c))
                return false;
    }

    if (flags & ImGuiInputTextFlags_CallbackCharFilter)
    {
        ImGuiTextEditCallbackData callback_data;
        memset(&callback_data, 0, sizeof(ImGuiTextEditCallbackData));
        callback_data.EventFlag = ImGuiInputTextFlags_CallbackCharFilter;
        callback_data.EventChar = (ImWchar)c;
        callback_data.Flags = flags;
        callback_data.UserData = user_data;
        if (callback(&callback_data) != 0)
            return false;
        *p_char = callback_data.EventChar;
        if (!callback_data.EventChar)
            return false;
    }

    return true;
}




bool ImGui::InputTextEx(const char* label, char* buf, int buf_size, const ImVec2& size_arg, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    (void)( (!!(!((flags & ImGuiInputTextFlags_CallbackHistory) && (flags & ImGuiInputTextFlags_Multiline)))) || (_wassert(L"!((flags & ImGuiInputTextFlags_CallbackHistory) && (flags & ImGuiInputTextFlags_Multiline))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7676)), 0) ); 
    (void)( (!!(!((flags & ImGuiInputTextFlags_CallbackCompletion) && (flags & ImGuiInputTextFlags_AllowTabInput)))) || (_wassert(L"!((flags & ImGuiInputTextFlags_CallbackCompletion) && (flags & ImGuiInputTextFlags_AllowTabInput))", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7677)), 0) ); 

    ImGuiContext& g = *GImGui;
    const ImGuiIO& io = g.IO;
    const ImGuiStyle& style = g.Style;

    const bool is_multiline = (flags & ImGuiInputTextFlags_Multiline) != 0;
    const bool is_editable = (flags & ImGuiInputTextFlags_ReadOnly) == 0;
    const bool is_password = (flags & ImGuiInputTextFlags_Password) != 0;

    if (is_multiline) 
        BeginGroup();
    const ImGuiID id = window->GetID(label);
    const ImVec2 label_size = CalcTextSize(label, 0, true);
    ImVec2 size = CalcItemSize(size_arg, CalcItemWidth(), (is_multiline ? GetTextLineHeight() * 8.0f : label_size.y) + style.FramePadding.y*2.0f); 
    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + size);
    const ImRect total_bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? (style.ItemInnerSpacing.x + label_size.x) : 0.0f, 0.0f));

    ImGuiWindow* draw_window = window;
    if (is_multiline)
    {
        if (!BeginChildFrame(id, frame_bb.GetSize()))
        {
            EndChildFrame();
            EndGroup();
            return false;
        }
        draw_window = GetCurrentWindow();
        size.x -= draw_window->ScrollbarSizes.x;
    }
    else
    {
        ItemSize(total_bb, style.FramePadding.y);
        if (!ItemAdd(total_bb, &id))
            return false;
    }

    
    if (is_password)
    {
        const ImFont::Glyph* glyph = g.Font->FindGlyph('*');
        ImFont* password_font = &g.InputTextPasswordFont;
        password_font->FontSize = g.Font->FontSize;
        password_font->Scale = g.Font->Scale;
        password_font->DisplayOffset = g.Font->DisplayOffset;
        password_font->Ascent = g.Font->Ascent;
        password_font->Descent = g.Font->Descent;
        password_font->ContainerAtlas = g.Font->ContainerAtlas;
        password_font->FallbackGlyph = glyph;
        password_font->FallbackXAdvance = glyph->XAdvance;
        (void)( (!!(password_font->Glyphs.empty() && password_font->IndexXAdvance.empty() && password_font->IndexLookup.empty())) || (_wassert(L"password_font->Glyphs.empty() && password_font->IndexXAdvance.empty() && password_font->IndexLookup.empty()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7727)), 0) );
        PushFont(password_font);
    }

    
    ImGuiTextEditState& edit_state = g.InputTextState;

    const bool focus_requested = FocusableItemRegister(window, g.ActiveId == id, (flags & (ImGuiInputTextFlags_CallbackCompletion|ImGuiInputTextFlags_AllowTabInput)) == 0);    
    const bool focus_requested_by_code = focus_requested && (window->FocusIdxAllCounter == window->FocusIdxAllRequestCurrent);
    const bool focus_requested_by_tab = focus_requested && !focus_requested_by_code;

    const bool hovered = IsHovered(frame_bb, id);
    if (hovered)
    {
        SetHoveredID(id);
        g.MouseCursor = ImGuiMouseCursor_TextInput;
    }
    const bool user_clicked = hovered && io.MouseClicked[0];
    const bool user_scrolled = is_multiline && g.ActiveId == 0 && edit_state.Id == id && g.ActiveIdPreviousFrame == draw_window->GetIDNoKeepAlive("#SCROLLY");

    bool select_all = (g.ActiveId != id) && (flags & ImGuiInputTextFlags_AutoSelectAll) != 0;
    if (focus_requested || user_clicked || user_scrolled)
    {
        if (g.ActiveId != id)
        {
            
            
            
            const int prev_len_w = edit_state.CurLenW;
            edit_state.Text.resize(buf_size+1);        
            edit_state.InitialText.resize(buf_size+1); 
            ImStrncpy(edit_state.InitialText.Data, buf, edit_state.InitialText.Size);
            const char* buf_end = 0;
            edit_state.CurLenW = ImTextStrFromUtf8(edit_state.Text.Data, edit_state.Text.Size, buf, 0, &buf_end);
            edit_state.CurLenA = (int)(buf_end - buf); 
            edit_state.CursorAnimReset();

            
            
            const bool recycle_state = (edit_state.Id == id) && (prev_len_w == edit_state.CurLenW);
            if (recycle_state)
            {
                
                
                edit_state.CursorClamp();
            }
            else
            {
                edit_state.Id = id;
                edit_state.ScrollX = 0.0f;
                stb_textedit_initialize_state(&edit_state.StbState, !is_multiline);
                if (!is_multiline && focus_requested_by_code)
                    select_all = true;
            }
            if (flags & ImGuiInputTextFlags_AlwaysInsertMode)
                edit_state.StbState.insert_mode = true;
            if (!is_multiline && (focus_requested_by_tab || (user_clicked && io.KeyCtrl)))
                select_all = true;
        }
        SetActiveID(id, window);
        FocusWindow(window);
    }
    else if (io.MouseClicked[0])
    {
        
        if (g.ActiveId == id)
            ClearActiveID();
    }

    bool value_changed = false;
    bool enter_pressed = false;

    if (g.ActiveId == id)
    {
        if (!is_editable && !g.ActiveIdIsJustActivated)
        {
            
            edit_state.Text.resize(buf_size+1);
            const char* buf_end = 0;
            edit_state.CurLenW = ImTextStrFromUtf8(edit_state.Text.Data, edit_state.Text.Size, buf, 0, &buf_end);
            edit_state.CurLenA = (int)(buf_end - buf);
            edit_state.CursorClamp();
        }

        edit_state.BufSizeA = buf_size;

        
        
        g.ActiveIdAllowOverlap = !io.MouseDown[0];

        
        const float mouse_x = (io.MousePos.x - frame_bb.Min.x - style.FramePadding.x) + edit_state.ScrollX;
        const float mouse_y = (is_multiline ? (io.MousePos.y - draw_window->DC.CursorPos.y - style.FramePadding.y) : (g.FontSize*0.5f));

        const bool osx_double_click_selects_words = io.OSXBehaviors;      
        if (select_all || (hovered && !osx_double_click_selects_words && io.MouseDoubleClicked[0]))
        {
            edit_state.SelectAll();
            edit_state.SelectedAllMouseLock = true;
        }
        else if (hovered && osx_double_click_selects_words && io.MouseDoubleClicked[0])
        {
            
            edit_state.OnKeyPressed(0x1000C);
            edit_state.OnKeyPressed(0x1000D | 0x20000);
        }
        else if (io.MouseClicked[0] && !edit_state.SelectedAllMouseLock)
        {
            stb_textedit_click(&edit_state, &edit_state.StbState, mouse_x, mouse_y);
            edit_state.CursorAnimReset();
        }
        else if (io.MouseDown[0] && !edit_state.SelectedAllMouseLock && (io.MouseDelta.x != 0.0f || io.MouseDelta.y != 0.0f))
        {
            stb_textedit_drag(&edit_state, &edit_state.StbState, mouse_x, mouse_y);
            edit_state.CursorAnimReset();
            edit_state.CursorFollow = true;
        }
        if (edit_state.SelectedAllMouseLock && !io.MouseDown[0])
            edit_state.SelectedAllMouseLock = false;

        if (io.InputCharacters[0])
        {
            
            
            if (!(io.KeyCtrl && !io.KeyAlt) && is_editable)
            {
                for (int n = 0; n < ((int)(sizeof(io.InputCharacters)/sizeof(*io.InputCharacters))) && io.InputCharacters[n]; n++)
                    if (unsigned int c = (unsigned int)io.InputCharacters[n])
                    {
                        
                        if (!InputTextFilterCharacter(&c, flags, callback, user_data))
                            continue;
                        edit_state.OnKeyPressed((int)c);
                    }
            }

            
            memset(g.IO.InputCharacters, 0, sizeof(g.IO.InputCharacters));
        }

        
        bool cancel_edit = false;
        const int k_mask = (io.KeyShift ? 0x20000 : 0);
        const bool is_shortcut_key_only = (io.OSXBehaviors ? (io.KeySuper && !io.KeyCtrl) : (io.KeyCtrl && !io.KeySuper)) && !io.KeyAlt && !io.KeyShift; 
        const bool is_wordmove_key_down = io.OSXBehaviors ? io.KeyAlt : io.KeyCtrl;                     
        const bool is_startend_key_down = io.OSXBehaviors && io.KeySuper && !io.KeyCtrl && !io.KeyAlt;  

        if (IsKeyPressedMap(ImGuiKey_LeftArrow))                        { edit_state.OnKeyPressed((is_startend_key_down ? 0x10004 : is_wordmove_key_down ? 0x1000C : 0x10000) | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_RightArrow))                  { edit_state.OnKeyPressed((is_startend_key_down ? 0x10005 : is_wordmove_key_down ? 0x1000D : 0x10001) | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_UpArrow) && is_multiline)     { if (io.KeyCtrl) SetWindowScrollY(draw_window, ImMax(draw_window->Scroll.y - g.FontSize, 0.0f)); else edit_state.OnKeyPressed((is_startend_key_down ? 0x10006 : 0x10002) | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_DownArrow) && is_multiline)   { if (io.KeyCtrl) SetWindowScrollY(draw_window, ImMin(draw_window->Scroll.y + g.FontSize, GetScrollMaxY())); else edit_state.OnKeyPressed((is_startend_key_down ? 0x10007 : 0x10003) | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_Home))                        { edit_state.OnKeyPressed(io.KeyCtrl ? 0x10006 | k_mask : 0x10004 | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_End))                         { edit_state.OnKeyPressed(io.KeyCtrl ? 0x10007 | k_mask : 0x10005 | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_Delete) && is_editable)       { edit_state.OnKeyPressed(0x10008 | k_mask); }
        else if (IsKeyPressedMap(ImGuiKey_Backspace) && is_editable)
        {
            if (!edit_state.HasSelection())
            {
                if (is_wordmove_key_down) edit_state.OnKeyPressed(0x1000C|0x20000);
                else if (io.OSXBehaviors && io.KeySuper && !io.KeyAlt && !io.KeyCtrl) edit_state.OnKeyPressed(0x10004|0x20000);
            }
            edit_state.OnKeyPressed(0x10009 | k_mask);
        }
        else if (IsKeyPressedMap(ImGuiKey_Enter))
        {
            bool ctrl_enter_for_new_line = (flags & ImGuiInputTextFlags_CtrlEnterForNewLine) != 0;
            if (!is_multiline || (ctrl_enter_for_new_line && !io.KeyCtrl) || (!ctrl_enter_for_new_line && io.KeyCtrl))
            {
                ClearActiveID();
                enter_pressed = true;
            }
            else if (is_editable)
            {
                unsigned int c = '\n'; 
                if (InputTextFilterCharacter(&c, flags, callback, user_data))
                    edit_state.OnKeyPressed((int)c);
            }
        }
        else if ((flags & ImGuiInputTextFlags_AllowTabInput) && IsKeyPressedMap(ImGuiKey_Tab) && !io.KeyCtrl && !io.KeyShift && !io.KeyAlt && is_editable)
        {
            unsigned int c = '\t'; 
            if (InputTextFilterCharacter(&c, flags, callback, user_data))
                edit_state.OnKeyPressed((int)c);
        }
        else if (IsKeyPressedMap(ImGuiKey_Escape))                                     { ClearActiveID(); cancel_edit = true; }
        else if (is_shortcut_key_only && IsKeyPressedMap(ImGuiKey_Z) && is_editable)   { edit_state.OnKeyPressed(0x1000A); edit_state.ClearSelection(); }
        else if (is_shortcut_key_only && IsKeyPressedMap(ImGuiKey_Y) && is_editable)   { edit_state.OnKeyPressed(0x1000B); edit_state.ClearSelection(); }
        else if (is_shortcut_key_only && IsKeyPressedMap(ImGuiKey_A))                  { edit_state.SelectAll(); edit_state.CursorFollow = true; }
        else if (is_shortcut_key_only && !is_password && ((IsKeyPressedMap(ImGuiKey_X) && is_editable) || IsKeyPressedMap(ImGuiKey_C)) && (!is_multiline || edit_state.HasSelection()))
        {
            
            const bool cut = IsKeyPressedMap(ImGuiKey_X);
            if (cut && !edit_state.HasSelection())
                edit_state.SelectAll();

            if (io.SetClipboardTextFn)
            {
                const int ib = edit_state.HasSelection() ? ImMin(edit_state.StbState.select_start, edit_state.StbState.select_end) : 0;
                const int ie = edit_state.HasSelection() ? ImMax(edit_state.StbState.select_start, edit_state.StbState.select_end) : edit_state.CurLenW;
                edit_state.TempTextBuffer.resize((ie-ib) * 4 + 1);
                ImTextStrToUtf8(edit_state.TempTextBuffer.Data, edit_state.TempTextBuffer.Size, edit_state.Text.Data+ib, edit_state.Text.Data+ie);
                SetClipboardText(edit_state.TempTextBuffer.Data);
            }

            if (cut)
            {
                edit_state.CursorFollow = true;
                stb_textedit_cut(&edit_state, &edit_state.StbState);
            }
        }
        else if (is_shortcut_key_only && IsKeyPressedMap(ImGuiKey_V) && is_editable)
        {
            
            if (const char* clipboard = GetClipboardText())
            {
                
                const int clipboard_len = (int)strlen(clipboard);
                ImWchar* clipboard_filtered = (ImWchar*)ImGui::MemAlloc((clipboard_len+1) * sizeof(ImWchar));
                int clipboard_filtered_len = 0;
                for (const char* s = clipboard; *s; )
                {
                    unsigned int c;
                    s += ImTextCharFromUtf8(&c, s, 0);
                    if (c == 0)
                        break;
                    if (c >= 0x10000 || !InputTextFilterCharacter(&c, flags, callback, user_data))
                        continue;
                    clipboard_filtered[clipboard_filtered_len++] = (ImWchar)c;
                }
                clipboard_filtered[clipboard_filtered_len] = 0;
                if (clipboard_filtered_len > 0) 
                {
                    stb_textedit_paste(&edit_state, &edit_state.StbState, clipboard_filtered, clipboard_filtered_len);
                    edit_state.CursorFollow = true;
                }
                ImGui::MemFree(clipboard_filtered);
            }
        }

        if (cancel_edit)
        {
            
            if (is_editable)
            {
                ImStrncpy(buf, edit_state.InitialText.Data, buf_size);
                value_changed = true;
            }
        }
        else
        {
            
            
            
            
            if (is_editable)
            {
                edit_state.TempTextBuffer.resize(edit_state.Text.Size * 4);
                ImTextStrToUtf8(edit_state.TempTextBuffer.Data, edit_state.TempTextBuffer.Size, edit_state.Text.Data, 0);
            }

            
            if ((flags & (ImGuiInputTextFlags_CallbackCompletion | ImGuiInputTextFlags_CallbackHistory | ImGuiInputTextFlags_CallbackAlways)) != 0)
            {
                (void)( (!!(callback != 0)) || (_wassert(L"callback != 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(7990)), 0) );

                
                ImGuiInputTextFlags event_flag = 0;
                ImGuiKey event_key = ImGuiKey_COUNT;
                if ((flags & ImGuiInputTextFlags_CallbackCompletion) != 0 && IsKeyPressedMap(ImGuiKey_Tab))
                {
                    event_flag = ImGuiInputTextFlags_CallbackCompletion;
                    event_key = ImGuiKey_Tab;
                }
                else if ((flags & ImGuiInputTextFlags_CallbackHistory) != 0 && IsKeyPressedMap(ImGuiKey_UpArrow))
                {
                    event_flag = ImGuiInputTextFlags_CallbackHistory;
                    event_key = ImGuiKey_UpArrow;
                }
                else if ((flags & ImGuiInputTextFlags_CallbackHistory) != 0 && IsKeyPressedMap(ImGuiKey_DownArrow))
                {
                    event_flag = ImGuiInputTextFlags_CallbackHistory;
                    event_key = ImGuiKey_DownArrow;
                }
                else if (flags & ImGuiInputTextFlags_CallbackAlways)
                    event_flag = ImGuiInputTextFlags_CallbackAlways;

                if (event_flag)
                {
                    ImGuiTextEditCallbackData callback_data;
                    memset(&callback_data, 0, sizeof(ImGuiTextEditCallbackData));
                    callback_data.EventFlag = event_flag;
                    callback_data.Flags = flags;
                    callback_data.UserData = user_data;
                    callback_data.ReadOnly = !is_editable;

                    callback_data.EventKey = event_key;
                    callback_data.Buf = edit_state.TempTextBuffer.Data;
                    callback_data.BufTextLen = edit_state.CurLenA;
                    callback_data.BufSize = edit_state.BufSizeA;
                    callback_data.BufDirty = false;

                    
                    ImWchar* text = edit_state.Text.Data;
                    const int utf8_cursor_pos = callback_data.CursorPos = ImTextCountUtf8BytesFromStr(text, text + edit_state.StbState.cursor);
                    const int utf8_selection_start = callback_data.SelectionStart = ImTextCountUtf8BytesFromStr(text, text + edit_state.StbState.select_start);
                    const int utf8_selection_end = callback_data.SelectionEnd = ImTextCountUtf8BytesFromStr(text, text + edit_state.StbState.select_end);

                    
                    callback(&callback_data);

                    
                    (void)( (!!(callback_data.Buf == edit_state.TempTextBuffer.Data)) || (_wassert(L"callback_data.Buf == edit_state.TempTextBuffer.Data", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8038)), 0) );  
                    (void)( (!!(callback_data.BufSize == edit_state.BufSizeA)) || (_wassert(L"callback_data.BufSize == edit_state.BufSizeA", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8039)), 0) );
                    (void)( (!!(callback_data.Flags == flags)) || (_wassert(L"callback_data.Flags == flags", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8040)), 0) );
                    if (callback_data.CursorPos != utf8_cursor_pos)            edit_state.StbState.cursor = ImTextCountCharsFromUtf8(callback_data.Buf, callback_data.Buf + callback_data.CursorPos);
                    if (callback_data.SelectionStart != utf8_selection_start)  edit_state.StbState.select_start = ImTextCountCharsFromUtf8(callback_data.Buf, callback_data.Buf + callback_data.SelectionStart);
                    if (callback_data.SelectionEnd != utf8_selection_end)      edit_state.StbState.select_end = ImTextCountCharsFromUtf8(callback_data.Buf, callback_data.Buf + callback_data.SelectionEnd);
                    if (callback_data.BufDirty)
                    {
                        (void)( (!!(callback_data.BufTextLen == (int)strlen(callback_data.Buf))) || (_wassert(L"callback_data.BufTextLen == (int)strlen(callback_data.Buf)", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8046)), 0) ); 
                        edit_state.CurLenW = ImTextStrFromUtf8(edit_state.Text.Data, edit_state.Text.Size, callback_data.Buf, 0);
                        edit_state.CurLenA = callback_data.BufTextLen;  
                        edit_state.CursorAnimReset();
                    }
                }
            }

            
            if (is_editable && strcmp(edit_state.TempTextBuffer.Data, buf) != 0)
            {
                ImStrncpy(buf, edit_state.TempTextBuffer.Data, buf_size);
                value_changed = true;
            }
        }
    }

    
    
    const char* buf_display = (g.ActiveId == id && is_editable) ? edit_state.TempTextBuffer.Data : buf; buf = 0; 

    if (!is_multiline)
        RenderFrame(frame_bb.Min, frame_bb.Max, GetColorU32(ImGuiCol_FrameBg), true, style.FrameRounding);

    const ImVec4 clip_rect(frame_bb.Min.x, frame_bb.Min.y, frame_bb.Min.x + size.x, frame_bb.Min.y + size.y); 
    ImVec2 render_pos = is_multiline ? draw_window->DC.CursorPos : frame_bb.Min + style.FramePadding;
    ImVec2 text_size(0.f, 0.f);
    const bool is_currently_scrolling = (edit_state.Id == id && is_multiline && g.ActiveId == draw_window->GetIDNoKeepAlive("#SCROLLY"));
    if (g.ActiveId == id || is_currently_scrolling)
    {
        edit_state.CursorAnim += io.DeltaTime;

        
        
        
        
        
        
        const ImWchar* text_begin = edit_state.Text.Data;
        ImVec2 cursor_offset, select_start_offset;

        {
            
            const ImWchar* searches_input_ptr[2];
            searches_input_ptr[0] = text_begin + edit_state.StbState.cursor;
            searches_input_ptr[1] = 0;
            int searches_remaining = 1;
            int searches_result_line_number[2] = { -1, -999 };
            if (edit_state.StbState.select_start != edit_state.StbState.select_end)
            {
                searches_input_ptr[1] = text_begin + ImMin(edit_state.StbState.select_start, edit_state.StbState.select_end);
                searches_result_line_number[1] = -1;
                searches_remaining++;
            }

            
            
            searches_remaining += is_multiline ? 1 : 0;
            int line_count = 0;
            for (const ImWchar* s = text_begin; *s != 0; s++)
                if (*s == '\n')
                {
                    line_count++;
                    if (searches_result_line_number[0] == -1 && s >= searches_input_ptr[0]) { searches_result_line_number[0] = line_count; if (--searches_remaining <= 0) break; }
                    if (searches_result_line_number[1] == -1 && s >= searches_input_ptr[1]) { searches_result_line_number[1] = line_count; if (--searches_remaining <= 0) break; }
                }
            line_count++;
            if (searches_result_line_number[0] == -1) searches_result_line_number[0] = line_count;
            if (searches_result_line_number[1] == -1) searches_result_line_number[1] = line_count;

            
            cursor_offset.x = InputTextCalcTextSizeW(ImStrbolW(searches_input_ptr[0], text_begin), searches_input_ptr[0]).x;
            cursor_offset.y = searches_result_line_number[0] * g.FontSize;
            if (searches_result_line_number[1] >= 0)
            {
                select_start_offset.x = InputTextCalcTextSizeW(ImStrbolW(searches_input_ptr[1], text_begin), searches_input_ptr[1]).x;
                select_start_offset.y = searches_result_line_number[1] * g.FontSize;
            }

            
            if (is_multiline)
                text_size = ImVec2(size.x, line_count * g.FontSize);
        }

        
        if (edit_state.CursorFollow)
        {
            
            if (!(flags & ImGuiInputTextFlags_NoHorizontalScroll))
            {
                const float scroll_increment_x = size.x * 0.25f;
                if (cursor_offset.x < edit_state.ScrollX)
                    edit_state.ScrollX = (float)(int)ImMax(0.0f, cursor_offset.x - scroll_increment_x);
                else if (cursor_offset.x - size.x >= edit_state.ScrollX)
                    edit_state.ScrollX = (float)(int)(cursor_offset.x - size.x + scroll_increment_x);
            }
            else
            {
                edit_state.ScrollX = 0.0f;
            }

            
            if (is_multiline)
            {
                float scroll_y = draw_window->Scroll.y;
                if (cursor_offset.y - g.FontSize < scroll_y)
                    scroll_y = ImMax(0.0f, cursor_offset.y - g.FontSize);
                else if (cursor_offset.y - size.y >= scroll_y)
                    scroll_y = cursor_offset.y - size.y;
                draw_window->DC.CursorPos.y += (draw_window->Scroll.y - scroll_y);   
                draw_window->Scroll.y = scroll_y;
                render_pos.y = draw_window->DC.CursorPos.y;
            }
        }
        edit_state.CursorFollow = false;
        const ImVec2 render_scroll = ImVec2(edit_state.ScrollX, 0.0f);

        
        if (edit_state.StbState.select_start != edit_state.StbState.select_end)
        {
            const ImWchar* text_selected_begin = text_begin + ImMin(edit_state.StbState.select_start, edit_state.StbState.select_end);
            const ImWchar* text_selected_end = text_begin + ImMax(edit_state.StbState.select_start, edit_state.StbState.select_end);

            float bg_offy_up = is_multiline ? 0.0f : -1.0f;    
            float bg_offy_dn = is_multiline ? 0.0f : 2.0f;
            ImU32 bg_color = GetColorU32(ImGuiCol_TextSelectedBg);
            ImVec2 rect_pos = render_pos + select_start_offset - render_scroll;
            for (const ImWchar* p = text_selected_begin; p < text_selected_end; )
            {
                if (rect_pos.y > clip_rect.w + g.FontSize)
                    break;
                if (rect_pos.y < clip_rect.y)
                {
                    while (p < text_selected_end)
                        if (*p++ == '\n')
                            break;
                }
                else
                {
                    ImVec2 rect_size = InputTextCalcTextSizeW(p, text_selected_end, &p, 0, true);
                    if (rect_size.x <= 0.0f) rect_size.x = (float)(int)(g.Font->GetCharAdvance((unsigned short)' ') * 0.50f); 
                    ImRect rect(rect_pos + ImVec2(0.0f, bg_offy_up - g.FontSize), rect_pos +ImVec2(rect_size.x, bg_offy_dn));
                    rect.Clip(clip_rect);
                    if (rect.Overlaps(clip_rect))
                        draw_window->DrawList->AddRectFilled(rect.Min, rect.Max, bg_color);
                }
                rect_pos.x = render_pos.x - render_scroll.x;
                rect_pos.y += g.FontSize;
            }
        }

        draw_window->DrawList->AddText(g.Font, g.FontSize, render_pos - render_scroll, GetColorU32(ImGuiCol_Text), buf_display, buf_display + edit_state.CurLenA, 0.0f, is_multiline ? 0 : &clip_rect);

        
        bool cursor_is_visible = (g.InputTextState.CursorAnim <= 0.0f) || fmodf(g.InputTextState.CursorAnim, 1.20f) <= 0.80f;
        ImVec2 cursor_screen_pos = render_pos + cursor_offset - render_scroll;
        ImRect cursor_screen_rect(cursor_screen_pos.x, cursor_screen_pos.y-g.FontSize+0.5f, cursor_screen_pos.x+1.0f, cursor_screen_pos.y-1.5f);
        if (cursor_is_visible && cursor_screen_rect.Overlaps(clip_rect))
            draw_window->DrawList->AddLine(cursor_screen_rect.Min, cursor_screen_rect.GetBL(), GetColorU32(ImGuiCol_Text));

        
        if (is_editable)
            g.OsImePosRequest = ImVec2(cursor_screen_pos.x - 1, cursor_screen_pos.y - g.FontSize);
    }
    else
    {
        
        const char* buf_end = 0;
        if (is_multiline)
            text_size = ImVec2(size.x, InputTextCalcTextLenAndLineCount(buf_display, &buf_end) * g.FontSize); 
        draw_window->DrawList->AddText(g.Font, g.FontSize, render_pos, GetColorU32(ImGuiCol_Text), buf_display, buf_end, 0.0f, is_multiline ? 0 : &clip_rect);
    }

    if (is_multiline)
    {
        Dummy(text_size + ImVec2(0.0f, g.FontSize)); 
        EndChildFrame();
        EndGroup();
    }

    if (is_password)
        PopFont();

    
    if (g.LogEnabled && !is_password)
        LogRenderedText(render_pos, buf_display, 0);

    if (label_size.x > 0)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, frame_bb.Min.y + style.FramePadding.y), label);

    if ((flags & ImGuiInputTextFlags_EnterReturnsTrue) != 0)
        return enter_pressed;
    else
        return value_changed;
}

bool ImGui::InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data)
{
    (void)( (!!(!(flags & ImGuiInputTextFlags_Multiline))) || (_wassert(L"!(flags & ImGuiInputTextFlags_Multiline)", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8244)), 0) ); 
    return InputTextEx(label, buf, (int)buf_size, ImVec2(0,0), flags, callback, user_data);
}

bool ImGui::InputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2& size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data)
{
    return InputTextEx(label, buf, (int)buf_size, size, flags | ImGuiInputTextFlags_Multiline, callback, user_data);
}


bool ImGui::InputScalarEx(const char* label, ImGuiDataType data_type, void* data_ptr, void* step_ptr, void* step_fast_ptr, const char* scalar_format, ImGuiInputTextFlags extra_flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImVec2 label_size = CalcTextSize(label, 0, true);

    BeginGroup();
    PushID(label);
    const ImVec2 button_sz = ImVec2(g.FontSize, g.FontSize) + style.FramePadding*2.0f;
    if (step_ptr)
        PushItemWidth(ImMax(1.0f, CalcItemWidth() - (button_sz.x + style.ItemInnerSpacing.x)*2));

    char buf[64];
    DataTypeFormatString(data_type, data_ptr, scalar_format, buf, ((int)(sizeof(buf)/sizeof(*buf))));

    bool value_changed = false;
    if (!(extra_flags & ImGuiInputTextFlags_CharsHexadecimal))
        extra_flags |= ImGuiInputTextFlags_CharsDecimal;
    extra_flags |= ImGuiInputTextFlags_AutoSelectAll;
    if (InputText("", buf, ((int)(sizeof(buf)/sizeof(*buf))), extra_flags)) 
        value_changed = DataTypeApplyOpFromText(buf, GImGui->InputTextState.InitialText.begin(), data_type, data_ptr, scalar_format);

    
    if (step_ptr)
    {
        PopItemWidth();
        SameLine(0, style.ItemInnerSpacing.x);
        if (ButtonEx("-", button_sz, ImGuiButtonFlags_Repeat | ImGuiButtonFlags_DontClosePopups))
        {
            DataTypeApplyOp(data_type, '-', data_ptr, g.IO.KeyCtrl && step_fast_ptr ? step_fast_ptr : step_ptr);
            value_changed = true;
        }
        SameLine(0, style.ItemInnerSpacing.x);
        if (ButtonEx("+", button_sz, ImGuiButtonFlags_Repeat | ImGuiButtonFlags_DontClosePopups))
        {
            DataTypeApplyOp(data_type, '+', data_ptr, g.IO.KeyCtrl && step_fast_ptr ? step_fast_ptr : step_ptr);
            value_changed = true;
        }
    }
    PopID();

    if (label_size.x > 0)
    {
        SameLine(0, style.ItemInnerSpacing.x);
        RenderText(ImVec2(window->DC.CursorPos.x, window->DC.CursorPos.y + style.FramePadding.y), label);
        ItemSize(label_size, style.FramePadding.y);
    }
    EndGroup();

    return value_changed;
}

bool ImGui::InputFloat(const char* label, float* v, float step, float step_fast, int decimal_precision, ImGuiInputTextFlags extra_flags)
{
    char display_format[16];
    if (decimal_precision < 0)
        strcpy(display_format, "%f");      
    else
        ImFormatString(display_format, ((int)(sizeof(display_format)/sizeof(*display_format))), "%%.%df", decimal_precision);
    return InputScalarEx(label, ImGuiDataType_Float, (void*)v, (void*)(step>0.0f ? &step : 0), (void*)(step_fast>0.0f ? &step_fast : 0), display_format, extra_flags);
}

bool ImGui::InputInt(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags extra_flags)
{
    
    const char* scalar_format = (extra_flags & ImGuiInputTextFlags_CharsHexadecimal) ? "%08X" : "%d";
    return InputScalarEx(label, ImGuiDataType_Int, (void*)v, (void*)(step>0.0f ? &step : 0), (void*)(step_fast>0.0f ? &step_fast : 0), scalar_format, extra_flags);
}

bool ImGui::InputFloatN(const char* label, float* v, int components, int decimal_precision, ImGuiInputTextFlags extra_flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= InputFloat("##v", &v[i], 0, 0, decimal_precision, extra_flags);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    window->DC.CurrentLineTextBaseOffset = ImMax(window->DC.CurrentLineTextBaseOffset, g.Style.FramePadding.y);
    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::InputFloat2(const char* label, float v[2], int decimal_precision, ImGuiInputTextFlags extra_flags)
{
    return InputFloatN(label, v, 2, decimal_precision, extra_flags);
}

bool ImGui::InputFloat3(const char* label, float v[3], int decimal_precision, ImGuiInputTextFlags extra_flags)
{
    return InputFloatN(label, v, 3, decimal_precision, extra_flags);
}

bool ImGui::InputFloat4(const char* label, float v[4], int decimal_precision, ImGuiInputTextFlags extra_flags)
{
    return InputFloatN(label, v, 4, decimal_precision, extra_flags);
}

bool ImGui::InputIntN(const char* label, int* v, int components, ImGuiInputTextFlags extra_flags)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    bool value_changed = false;
    BeginGroup();
    PushID(label);
    PushMultiItemsWidths(components);
    for (int i = 0; i < components; i++)
    {
        PushID(i);
        value_changed |= InputInt("##v", &v[i], 0, 0, extra_flags);
        SameLine(0, g.Style.ItemInnerSpacing.x);
        PopID();
        PopItemWidth();
    }
    PopID();

    window->DC.CurrentLineTextBaseOffset = ImMax(window->DC.CurrentLineTextBaseOffset, g.Style.FramePadding.y);
    TextUnformatted(label, FindRenderedTextEnd(label));
    EndGroup();

    return value_changed;
}

bool ImGui::InputInt2(const char* label, int v[2], ImGuiInputTextFlags extra_flags)
{
    return InputIntN(label, v, 2, extra_flags);
}

bool ImGui::InputInt3(const char* label, int v[3], ImGuiInputTextFlags extra_flags)
{
    return InputIntN(label, v, 3, extra_flags);
}

bool ImGui::InputInt4(const char* label, int v[4], ImGuiInputTextFlags extra_flags)
{
    return InputIntN(label, v, 4, extra_flags);
}

static bool Items_ArrayGetter(void* data, int idx, const char** out_text)
{
    const char* const* items = (const char* const*)data;
    if (out_text)
        *out_text = items[idx];
    return true;
}

static bool Items_SingleStringGetter(void* data, int idx, const char** out_text)
{
    
    const char* items_separated_by_zeros = (const char*)data;
    int items_count = 0;
    const char* p = items_separated_by_zeros;
    while (*p)
    {
        if (idx == items_count)
            break;
        p += strlen(p) + 1;
        items_count++;
    }
    if (!*p)
        return false;
    if (out_text)
        *out_text = p;
    return true;
}


bool ImGui::Combo(const char* label, int* current_item, const char* const* items, int items_count, int height_in_items)
{
    const bool value_changed = Combo(label, current_item, Items_ArrayGetter, (void*)items, items_count, height_in_items);
    return value_changed;
}


bool ImGui::Combo(const char* label, int* current_item, const char* items_separated_by_zeros, int height_in_items)
{
    int items_count = 0;
    const char* p = items_separated_by_zeros;       
    while (*p)
    {
        p += strlen(p) + 1;
        items_count++;
    }
    bool value_changed = Combo(label, current_item, Items_SingleStringGetter, (void*)items_separated_by_zeros, items_count, height_in_items);
    return value_changed;
}


bool ImGui::Combo(const char* label, int* current_item, bool (*items_getter)(void*, int, const char**), void* data, int items_count, int height_in_items)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const float w = CalcItemWidth();

    const ImVec2 label_size = CalcTextSize(label, 0, true);
    const ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(w, label_size.y + style.FramePadding.y*2.0f));
    const ImRect total_bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0.0f));
    ItemSize(total_bb, style.FramePadding.y);
    if (!ItemAdd(total_bb, &id))
        return false;

    const float arrow_size = (g.FontSize + style.FramePadding.x * 2.0f);
    const bool hovered = IsHovered(frame_bb, id);
    bool popup_open = IsPopupOpen(id);
    bool popup_opened_now = false;

    const ImRect value_bb(frame_bb.Min, frame_bb.Max - ImVec2(arrow_size, 0.0f));
    RenderFrame(frame_bb.Min, frame_bb.Max, GetColorU32(ImGuiCol_FrameBg), true, style.FrameRounding);
    RenderFrame(ImVec2(frame_bb.Max.x-arrow_size, frame_bb.Min.y), frame_bb.Max, GetColorU32(popup_open || hovered ? ImGuiCol_ButtonHovered : ImGuiCol_Button), true, style.FrameRounding); 
    RenderCollapseTriangle(ImVec2(frame_bb.Max.x-arrow_size, frame_bb.Min.y) + style.FramePadding, true);

    if (*current_item >= 0 && *current_item < items_count)
    {
        const char* item_text;
        if (items_getter(data, *current_item, &item_text))
            RenderTextClipped(frame_bb.Min + style.FramePadding, value_bb.Max, item_text, 0, 0, ImVec2(0.0f,0.0f));
    }

    if (label_size.x > 0)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, frame_bb.Min.y + style.FramePadding.y), label);

    if (hovered)
    {
        SetHoveredID(id);
        if (g.IO.MouseClicked[0])
        {
            ClearActiveID();
            if (IsPopupOpen(id))
            {
                ClosePopup(id);
            }
            else
            {
                FocusWindow(window);
                OpenPopup(label);
                popup_open = popup_opened_now = true;
            }
        }
    }

    bool value_changed = false;
    if (IsPopupOpen(id))
    {
        
        if (height_in_items < 0)
            height_in_items = 7;

        float popup_height = (label_size.y + style.ItemSpacing.y) * ImMin(items_count, height_in_items) + (style.FramePadding.y * 3);
        float popup_y1 = frame_bb.Max.y;
        float popup_y2 = ImClamp(popup_y1 + popup_height, popup_y1, g.IO.DisplaySize.y - style.DisplaySafeAreaPadding.y);
        if ((popup_y2 - popup_y1) < ImMin(popup_height, frame_bb.Min.y - style.DisplaySafeAreaPadding.y))
        {
            
            popup_y1 = ImClamp(frame_bb.Min.y - popup_height, style.DisplaySafeAreaPadding.y, frame_bb.Min.y);
            popup_y2 = frame_bb.Min.y;
        }
        ImRect popup_rect(ImVec2(frame_bb.Min.x, popup_y1), ImVec2(frame_bb.Max.x, popup_y2));
        SetNextWindowPos(popup_rect.Min);
        SetNextWindowSize(popup_rect.GetSize());
        PushStyleVar(ImGuiStyleVar_WindowPadding, style.FramePadding);

        const ImGuiWindowFlags flags = ImGuiWindowFlags_ComboBox | ((window->Flags & ImGuiWindowFlags_ShowBorders) ? ImGuiWindowFlags_ShowBorders : 0);
        if (BeginPopupEx(label, flags))
        {
            
            Spacing();
            for (int i = 0; i < items_count; i++)
            {
                PushID((void*)(intptr_t)i);
                const bool item_selected = (i == *current_item);
                const char* item_text;
                if (!items_getter(data, i, &item_text))
                    item_text = "*Unknown item*";
                if (Selectable(item_text, item_selected))
                {
                    ClearActiveID();
                    value_changed = true;
                    *current_item = i;
                }
                if (item_selected && popup_opened_now)
                    SetScrollHere();
                PopID();
            }
            EndPopup();
        }
        PopStyleVar();
    }
    return value_changed;
}



bool ImGui::Selectable(const char* label, bool selected, ImGuiSelectableFlags flags, const ImVec2& size_arg)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    if ((flags & ImGuiSelectableFlags_SpanAllColumns) && window->DC.ColumnsCount > 1)
        PopClipRect();

    ImGuiID id = window->GetID(label);
    ImVec2 label_size = CalcTextSize(label, 0, true);
    ImVec2 size(size_arg.x != 0.0f ? size_arg.x : label_size.x, size_arg.y != 0.0f ? size_arg.y : label_size.y);
    ImVec2 pos = window->DC.CursorPos;
    pos.y += window->DC.CurrentLineTextBaseOffset;
    ImRect bb(pos, pos + size);
    ItemSize(bb);

    
    ImVec2 window_padding = window->WindowPadding;
    float max_x = (flags & ImGuiSelectableFlags_SpanAllColumns) ? GetWindowContentRegionMax().x : GetContentRegionMax().x;
    float w_draw = ImMax(label_size.x, window->Pos.x + max_x - window_padding.x - window->DC.CursorPos.x);
    ImVec2 size_draw((size_arg.x != 0 && !(flags & ImGuiSelectableFlags_DrawFillAvailWidth)) ? size_arg.x : w_draw, size_arg.y != 0.0f ? size_arg.y : size.y);
    ImRect bb_with_spacing(pos, pos + size_draw);
    if (size_arg.x == 0.0f || (flags & ImGuiSelectableFlags_DrawFillAvailWidth))
        bb_with_spacing.Max.x += window_padding.x;

    
    float spacing_L = (float)(int)(style.ItemSpacing.x * 0.5f);
    float spacing_U = (float)(int)(style.ItemSpacing.y * 0.5f);
    float spacing_R = style.ItemSpacing.x - spacing_L;
    float spacing_D = style.ItemSpacing.y - spacing_U;
    bb_with_spacing.Min.x -= spacing_L;
    bb_with_spacing.Min.y -= spacing_U;
    bb_with_spacing.Max.x += spacing_R;
    bb_with_spacing.Max.y += spacing_D;
    if (!ItemAdd(bb_with_spacing, &id))
    {
        if ((flags & ImGuiSelectableFlags_SpanAllColumns) && window->DC.ColumnsCount > 1)
            PushColumnClipRect();
        return false;
    }

    ImGuiButtonFlags button_flags = 0;
    if (flags & ImGuiSelectableFlags_Menu) button_flags |= ImGuiButtonFlags_PressedOnClick;
    if (flags & ImGuiSelectableFlags_MenuItem) button_flags |= ImGuiButtonFlags_PressedOnClick|ImGuiButtonFlags_PressedOnRelease;
    if (flags & ImGuiSelectableFlags_Disabled) button_flags |= ImGuiButtonFlags_Disabled;
    if (flags & ImGuiSelectableFlags_AllowDoubleClick) button_flags |= ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnDoubleClick;
    bool hovered, held;
    bool pressed = ButtonBehavior(bb_with_spacing, id, &hovered, &held, button_flags);
    if (flags & ImGuiSelectableFlags_Disabled)
        selected = false;

    
    if (hovered || selected)
    {
        const ImU32 col = GetColorU32((held && hovered) ? ImGuiCol_HeaderActive : hovered ? ImGuiCol_HeaderHovered : ImGuiCol_Header);
        RenderFrame(bb_with_spacing.Min, bb_with_spacing.Max, col, false, 0.0f);
    }

    if ((flags & ImGuiSelectableFlags_SpanAllColumns) && window->DC.ColumnsCount > 1)
    {
        PushColumnClipRect();
        bb_with_spacing.Max.x -= (GetContentRegionMax().x - max_x);
    }

    if (flags & ImGuiSelectableFlags_Disabled) PushStyleColor(ImGuiCol_Text, g.Style.Colors[ImGuiCol_TextDisabled]);
    RenderTextClipped(bb.Min, bb_with_spacing.Max, label, 0, &label_size, ImVec2(0.0f,0.0f));
    if (flags & ImGuiSelectableFlags_Disabled) PopStyleColor();

    
    if (pressed && !(flags & ImGuiSelectableFlags_DontClosePopups) && (window->Flags & ImGuiWindowFlags_Popup))
        CloseCurrentPopup();
    return pressed;
}

bool ImGui::Selectable(const char* label, bool* p_selected, ImGuiSelectableFlags flags, const ImVec2& size_arg)
{
    if (Selectable(label, *p_selected, flags, size_arg))
    {
        *p_selected = !*p_selected;
        return true;
    }
    return false;
}



bool ImGui::ListBoxHeader(const char* label, const ImVec2& size_arg)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    const ImGuiStyle& style = GetStyle();
    const ImGuiID id = GetID(label);
    const ImVec2 label_size = CalcTextSize(label, 0, true);

    
    ImVec2 size = CalcItemSize(size_arg, CalcItemWidth(), GetTextLineHeightWithSpacing() * 7.4f + style.ItemSpacing.y);
    ImVec2 frame_size = ImVec2(size.x, ImMax(size.y, label_size.y));
    ImRect frame_bb(window->DC.CursorPos, window->DC.CursorPos + frame_size);
    ImRect bb(frame_bb.Min, frame_bb.Max + ImVec2(label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f, 0.0f));
    window->DC.LastItemRect = bb;

    BeginGroup();
    if (label_size.x > 0)
        RenderText(ImVec2(frame_bb.Max.x + style.ItemInnerSpacing.x, frame_bb.Min.y + style.FramePadding.y), label);

    BeginChildFrame(id, frame_bb.GetSize());
    return true;
}

bool ImGui::ListBoxHeader(const char* label, int items_count, int height_in_items)
{
    
    
    
    if (height_in_items < 0)
        height_in_items = ImMin(items_count, 7);
    float height_in_items_f = height_in_items < items_count ? (height_in_items + 0.40f) : (height_in_items + 0.00f);

    
    ImVec2 size;
    size.x = 0.0f;
    size.y = GetTextLineHeightWithSpacing() * height_in_items_f + GetStyle().ItemSpacing.y;
    return ListBoxHeader(label, size);
}

void ImGui::ListBoxFooter()
{
    ImGuiWindow* parent_window = GetParentWindow();
    const ImRect bb = parent_window->DC.LastItemRect;
    const ImGuiStyle& style = GetStyle();

    EndChildFrame();

    
    
    SameLine();
    parent_window->DC.CursorPos = bb.Min;
    ItemSize(bb, style.FramePadding.y);
    EndGroup();
}

bool ImGui::ListBox(const char* label, int* current_item, const char* const* items, int items_count, int height_items)
{
    const bool value_changed = ListBox(label, current_item, Items_ArrayGetter, (void*)items, items_count, height_items);
    return value_changed;
}

bool ImGui::ListBox(const char* label, int* current_item, bool (*items_getter)(void*, int, const char**), void* data, int items_count, int height_in_items)
{
    if (!ListBoxHeader(label, items_count, height_in_items))
        return false;

    
    bool value_changed = false;
    ImGuiListClipper clipper(items_count, GetTextLineHeightWithSpacing());
    while (clipper.Step())
        for (int i = clipper.DisplayStart; i < clipper.DisplayEnd; i++)
        {
            const bool item_selected = (i == *current_item);
            const char* item_text;
            if (!items_getter(data, i, &item_text))
                item_text = "*Unknown item*";

            PushID(i);
            if (Selectable(item_text, item_selected))
            {
                *current_item = i;
                value_changed = true;
            }
            PopID();
        }
    ListBoxFooter();
    return value_changed;
}

bool ImGui::MenuItem(const char* label, const char* shortcut, bool selected, bool enabled)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    ImVec2 pos = window->DC.CursorPos;
    ImVec2 label_size = CalcTextSize(label, 0, true);
    ImVec2 shortcut_size = shortcut ? CalcTextSize(shortcut, 0) : ImVec2(0.0f, 0.0f);
    float w = window->MenuColumns.DeclColumns(label_size.x, shortcut_size.x, (float)(int)(g.FontSize * 1.20f)); 
    float extra_w = ImMax(0.0f, GetContentRegionAvail().x - w);

    bool pressed = Selectable(label, false, ImGuiSelectableFlags_MenuItem | ImGuiSelectableFlags_DrawFillAvailWidth | (enabled ? 0 : ImGuiSelectableFlags_Disabled), ImVec2(w, 0.0f));
    if (shortcut_size.x > 0.0f)
    {
        PushStyleColor(ImGuiCol_Text, g.Style.Colors[ImGuiCol_TextDisabled]);
        RenderText(pos + ImVec2(window->MenuColumns.Pos[1] + extra_w, 0.0f), shortcut, 0, false);
        PopStyleColor();
    }

    if (selected)
        RenderCheckMark(pos + ImVec2(window->MenuColumns.Pos[2] + extra_w + g.FontSize * 0.20f, 0.0f), GetColorU32(enabled ? ImGuiCol_Text : ImGuiCol_TextDisabled));

    return pressed;
}

bool ImGui::MenuItem(const char* label, const char* shortcut, bool* p_selected, bool enabled)
{
    if (MenuItem(label, shortcut, p_selected ? *p_selected : false, enabled))
    {
        if (p_selected)
            *p_selected = !*p_selected;
        return true;
    }
    return false;
}

bool ImGui::BeginMainMenuBar()
{
    ImGuiContext& g = *GImGui;
    SetNextWindowPos(ImVec2(0.0f, 0.0f));
    SetNextWindowSize(ImVec2(g.IO.DisplaySize.x, g.FontBaseSize + g.Style.FramePadding.y * 2.0f));
    PushStyleVar(ImGuiStyleVar_WindowRounding, 0.0f);
    PushStyleVar(ImGuiStyleVar_WindowMinSize, ImVec2(0,0));
    if (!Begin("##MainMenuBar", 0, ImGuiWindowFlags_NoTitleBar|ImGuiWindowFlags_NoResize|ImGuiWindowFlags_NoMove|ImGuiWindowFlags_NoScrollbar|ImGuiWindowFlags_NoSavedSettings|ImGuiWindowFlags_MenuBar)
        || !BeginMenuBar())
    {
        End();
        PopStyleVar(2);
        return false;
    }
    g.CurrentWindow->DC.MenuBarOffsetX += g.Style.DisplaySafeAreaPadding.x;
    return true;
}

void ImGui::EndMainMenuBar()
{
    EndMenuBar();
    End();
    PopStyleVar(2);
}

bool ImGui::BeginMenuBar()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;
    if (!(window->Flags & ImGuiWindowFlags_MenuBar))
        return false;

    (void)( (!!(!window->DC.MenuBarAppending)) || (_wassert(L"!window->DC.MenuBarAppending", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8824)), 0) );
    BeginGroup(); 
    PushID("##menubar");
    ImRect rect = window->MenuBarRect();
    PushClipRect(ImVec2(ImFloor(rect.Min.x+0.5f), ImFloor(rect.Min.y + window->BorderSize + 0.5f)), ImVec2(ImFloor(rect.Max.x+0.5f), ImFloor(rect.Max.y+0.5f)), false);
    window->DC.CursorPos = ImVec2(rect.Min.x + window->DC.MenuBarOffsetX, rect.Min.y);
    window->DC.LayoutType = ImGuiLayoutType_Horizontal;
    window->DC.MenuBarAppending = true;
    AlignFirstTextHeightToWidgets();
    return true;
}

void ImGui::EndMenuBar()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    (void)( (!!(window->Flags & ImGuiWindowFlags_MenuBar)) || (_wassert(L"window->Flags & ImGuiWindowFlags_MenuBar", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8842)), 0) );
    (void)( (!!(window->DC.MenuBarAppending)) || (_wassert(L"window->DC.MenuBarAppending", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(8843)), 0) );
    PopClipRect();
    PopID();
    window->DC.MenuBarOffsetX = window->DC.CursorPos.x - window->MenuBarRect().Min.x;
    window->DC.GroupStack.back().AdvanceCursor = false;
    EndGroup();
    window->DC.LayoutType = ImGuiLayoutType_Vertical;
    window->DC.MenuBarAppending = false;
}

bool ImGui::BeginMenu(const char* label, bool enabled)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);

    ImVec2 label_size = CalcTextSize(label, 0, true);
    ImGuiWindow* backed_focused_window = g.FocusedWindow;

    bool pressed;
    bool menu_is_open = IsPopupOpen(id);
    bool menuset_is_open = !(window->Flags & ImGuiWindowFlags_Popup) && (g.OpenPopupStack.Size > g.CurrentPopupStack.Size && g.OpenPopupStack[g.CurrentPopupStack.Size].ParentMenuSet == window->GetID("##menus"));
    if (menuset_is_open)
        g.FocusedWindow = window;

    
    ImVec2 popup_pos, pos = window->DC.CursorPos;
    if (window->DC.LayoutType == ImGuiLayoutType_Horizontal)
    {
        popup_pos = ImVec2(pos.x - window->WindowPadding.x, pos.y - style.FramePadding.y + window->MenuBarHeight());
        window->DC.CursorPos.x += (float)(int)(style.ItemSpacing.x * 0.5f);
        PushStyleVar(ImGuiStyleVar_ItemSpacing, style.ItemSpacing * 2.0f);
        float w = label_size.x;
        pressed = Selectable(label, menu_is_open, ImGuiSelectableFlags_Menu | ImGuiSelectableFlags_DontClosePopups | (!enabled ? ImGuiSelectableFlags_Disabled : 0), ImVec2(w, 0.0f));
        PopStyleVar();
        SameLine();
        window->DC.CursorPos.x += (float)(int)(style.ItemSpacing.x * 0.5f);
    }
    else
    {
        popup_pos = ImVec2(pos.x, pos.y - style.WindowPadding.y);
        float w = window->MenuColumns.DeclColumns(label_size.x, 0.0f, (float)(int)(g.FontSize * 1.20f)); 
        float extra_w = ImMax(0.0f, GetContentRegionAvail().x - w);
        pressed = Selectable(label, menu_is_open, ImGuiSelectableFlags_Menu | ImGuiSelectableFlags_DontClosePopups | ImGuiSelectableFlags_DrawFillAvailWidth | (!enabled ? ImGuiSelectableFlags_Disabled : 0), ImVec2(w, 0.0f));
        if (!enabled) PushStyleColor(ImGuiCol_Text, g.Style.Colors[ImGuiCol_TextDisabled]);
        RenderCollapseTriangle(pos + ImVec2(window->MenuColumns.Pos[2] + extra_w + g.FontSize * 0.20f, 0.0f), false);
        if (!enabled) PopStyleColor();
    }

    bool hovered = enabled && IsHovered(window->DC.LastItemRect, id);
    if (menuset_is_open)
        g.FocusedWindow = backed_focused_window;

    bool want_open = false, want_close = false;
    if (window->Flags & (ImGuiWindowFlags_Popup|ImGuiWindowFlags_ChildMenu))
    {
        
        bool moving_within_opened_triangle = false;
        if (g.HoveredWindow == window && g.OpenPopupStack.Size > g.CurrentPopupStack.Size && g.OpenPopupStack[g.CurrentPopupStack.Size].ParentWindow == window)
        {
            if (ImGuiWindow* next_window = g.OpenPopupStack[g.CurrentPopupStack.Size].Window)
            {
                ImRect next_window_rect = next_window->Rect();
                ImVec2 ta = g.IO.MousePos - g.IO.MouseDelta;
                ImVec2 tb = (window->Pos.x < next_window->Pos.x) ? next_window_rect.GetTL() : next_window_rect.GetTR();
                ImVec2 tc = (window->Pos.x < next_window->Pos.x) ? next_window_rect.GetBL() : next_window_rect.GetBR();
                float extra = ImClamp(fabsf(ta.x - tb.x) * 0.30f, 5.0f, 30.0f); 
                ta.x += (window->Pos.x < next_window->Pos.x) ? -0.5f : +0.5f;   
                tb.y = ta.y + ImMax((tb.y - extra) - ta.y, -100.0f);            
                tc.y = ta.y + ImMin((tc.y + extra) - ta.y, +100.0f);
                moving_within_opened_triangle = ImIsPointInTriangle(g.IO.MousePos, ta, tb, tc);
                
            }
        }

        want_close = (menu_is_open && !hovered && g.HoveredWindow == window && g.HoveredIdPreviousFrame != 0 && g.HoveredIdPreviousFrame != id && !moving_within_opened_triangle);
        want_open = (!menu_is_open && hovered && !moving_within_opened_triangle) || (!menu_is_open && hovered && pressed);
    }
    else if (menu_is_open && pressed && menuset_is_open) 
    {
        want_close = true;
        want_open = menu_is_open = false;
    }
    else if (pressed || (hovered && menuset_is_open && !menu_is_open)) 
        want_open = true;
    if (!enabled) 
        want_close = true;
    if (want_close && IsPopupOpen(id))
        ClosePopupToLevel(GImGui->CurrentPopupStack.Size);

    if (!menu_is_open && want_open && g.OpenPopupStack.Size > g.CurrentPopupStack.Size)
    {
        
        OpenPopup(label);
        return false;
    }

    menu_is_open |= want_open;
    if (want_open)
        OpenPopup(label);

    if (menu_is_open)
    {
        SetNextWindowPos(popup_pos, ImGuiSetCond_Always);
        ImGuiWindowFlags flags = ImGuiWindowFlags_ShowBorders | ((window->Flags & (ImGuiWindowFlags_Popup|ImGuiWindowFlags_ChildMenu)) ? ImGuiWindowFlags_ChildMenu|ImGuiWindowFlags_ChildWindow : ImGuiWindowFlags_ChildMenu);
        menu_is_open = BeginPopupEx(label, flags); 
    }

    return menu_is_open;
}

void ImGui::EndMenu()
{
    EndPopup();
}



bool ImGui::ColorButton(const ImVec4& col, bool small_height, bool outline_border)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID("#colorbutton");
    const float square_size = g.FontSize;
    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + ImVec2(square_size + style.FramePadding.y*2, square_size + (small_height ? 0 : style.FramePadding.y*2)));
    ItemSize(bb, small_height ? 0.0f : style.FramePadding.y);
    if (!ItemAdd(bb, &id))
        return false;

    bool hovered, held;
    bool pressed = ButtonBehavior(bb, id, &hovered, &held);
    RenderFrame(bb.Min, bb.Max, GetColorU32(col), outline_border, style.FrameRounding);

    if (hovered)
        SetTooltip("Color:\n(%.2f,%.2f,%.2f,%.2f)\n#%02X%02X%02X%02X", col.x, col.y, col.z, col.w, ((int)(ImSaturate(col.x) * 255.0f + 0.5f)), ((int)(ImSaturate(col.y) * 255.0f + 0.5f)), ((int)(ImSaturate(col.z) * 255.0f + 0.5f)), ((int)(ImSaturate(col.w) * 255.0f + 0.5f)));

    return pressed;
}

bool ImGui::ColorEdit3(const char* label, float col[3])
{
    float col4[4];
    col4[0] = col[0];
    col4[1] = col[1];
    col4[2] = col[2];
    col4[3] = 1.0f;
    const bool value_changed = ColorEdit4(label, col4, false);
    col[0] = col4[0];
    col[1] = col4[1];
    col[2] = col4[2];
    return value_changed;
}



bool ImGui::ColorEdit4(const char* label, float col[4], bool alpha)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return false;

    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;
    const ImGuiID id = window->GetID(label);
    const float w_full = CalcItemWidth();
    const float square_sz = (g.FontSize + style.FramePadding.y * 2.0f);

    ImGuiColorEditMode edit_mode = window->DC.ColorEditMode;
    if (edit_mode == ImGuiColorEditMode_UserSelect || edit_mode == ImGuiColorEditMode_UserSelectShowButton)
        edit_mode = g.ColorEditModeStorage.GetInt(id, 0) % 3;

    float f[4] = { col[0], col[1], col[2], col[3] };
    if (edit_mode == ImGuiColorEditMode_HSV)
        ColorConvertRGBtoHSV(f[0], f[1], f[2], f[0], f[1], f[2]);

    int i[4] = { ((int)((f[0]) * 255.0f + ((f[0])>=0 ? 0.5f : -0.5f))), ((int)((f[1]) * 255.0f + ((f[1])>=0 ? 0.5f : -0.5f))), ((int)((f[2]) * 255.0f + ((f[2])>=0 ? 0.5f : -0.5f))), ((int)((f[3]) * 255.0f + ((f[3])>=0 ? 0.5f : -0.5f))) };

    int components = alpha ? 4 : 3;
    bool value_changed = false;

    BeginGroup();
    PushID(label);

    const bool hsv = (edit_mode == 1);
    switch (edit_mode)
    {
    case ImGuiColorEditMode_RGB:
    case ImGuiColorEditMode_HSV:
        {
            
            const float w_items_all = w_full - (square_sz + style.ItemInnerSpacing.x);
            const float w_item_one  = ImMax(1.0f, (float)(int)((w_items_all - (style.ItemInnerSpacing.x) * (components-1)) / (float)components));
            const float w_item_last = ImMax(1.0f, (float)(int)(w_items_all - (w_item_one + style.ItemInnerSpacing.x) * (components-1)));

            const bool hide_prefix = (w_item_one <= CalcTextSize("M:999").x);
            const char* ids[4] = { "##X", "##Y", "##Z", "##W" };
            const char* fmt_table[3][4] =
            {
                {   "%3.0f",   "%3.0f",   "%3.0f",   "%3.0f" },
                { "R:%3.0f", "G:%3.0f", "B:%3.0f", "A:%3.0f" },
                { "H:%3.0f", "S:%3.0f", "V:%3.0f", "A:%3.0f" }
            };
            const char** fmt = hide_prefix ? fmt_table[0] : hsv ? fmt_table[2] : fmt_table[1];

            PushItemWidth(w_item_one);
            for (int n = 0; n < components; n++)
            {
                if (n > 0)
                    SameLine(0, style.ItemInnerSpacing.x);
                if (n + 1 == components)
                    PushItemWidth(w_item_last);
                value_changed |= DragInt(ids[n], &i[n], 1.0f, 0, 255, fmt[n]);
            }
            PopItemWidth();
            PopItemWidth();
        }
        break;
    case ImGuiColorEditMode_HEX:
        {
            
            const float w_slider_all = w_full - square_sz;
            char buf[64];
            if (alpha)
                ImFormatString(buf, ((int)(sizeof(buf)/sizeof(*buf))), "#%02X%02X%02X%02X", i[0], i[1], i[2], i[3]);
            else
                ImFormatString(buf, ((int)(sizeof(buf)/sizeof(*buf))), "#%02X%02X%02X", i[0], i[1], i[2]);
            PushItemWidth(w_slider_all - style.ItemInnerSpacing.x);
            if (InputText("##Text", buf, ((int)(sizeof(buf)/sizeof(*buf))), ImGuiInputTextFlags_CharsHexadecimal | ImGuiInputTextFlags_CharsUppercase))
            {
                value_changed |= true;
                char* p = buf;
                while (*p == '#' || ImCharIsSpace(*p))
                    p++;
                i[0] = i[1] = i[2] = i[3] = 0;
                if (alpha)
                    sscanf(p, "%02X%02X%02X%02X", (unsigned int*)&i[0], (unsigned int*)&i[1], (unsigned int*)&i[2], (unsigned int*)&i[3]); 
                else
                    sscanf(p, "%02X%02X%02X", (unsigned int*)&i[0], (unsigned int*)&i[1], (unsigned int*)&i[2]);
            }
            PopItemWidth();
        }
        break;
    }

    SameLine(0, style.ItemInnerSpacing.x);

    const ImVec4 col_display(col[0], col[1], col[2], 1.0f);
    if (ColorButton(col_display))
        g.ColorEditModeStorage.SetInt(id, (edit_mode + 1) % 3); 

    
    if (IsItemHovered())
        SetTooltip("Color:\n(%.2f,%.2f,%.2f,%.2f)\n#%02X%02X%02X%02X", col[0], col[1], col[2], col[3], ((int)(ImSaturate(col[0]) * 255.0f + 0.5f)), ((int)(ImSaturate(col[1]) * 255.0f + 0.5f)), ((int)(ImSaturate(col[2]) * 255.0f + 0.5f)), ((int)(ImSaturate(col[3]) * 255.0f + 0.5f)));

    if (window->DC.ColorEditMode == ImGuiColorEditMode_UserSelectShowButton)
    {
        SameLine(0, style.ItemInnerSpacing.x);
        const char* button_titles[3] = { "RGB", "HSV", "HEX" };
        if (ButtonEx(button_titles[edit_mode], ImVec2(0,0), ImGuiButtonFlags_DontClosePopups))
            g.ColorEditModeStorage.SetInt(id, (edit_mode + 1) % 3); 
    }

    const char* label_display_end = FindRenderedTextEnd(label);
    if (label != label_display_end)
    {
        SameLine(0, (window->DC.ColorEditMode == ImGuiColorEditMode_UserSelectShowButton) ? -1.0f : style.ItemInnerSpacing.x);
        TextUnformatted(label, label_display_end);
    }

    
    for (int n = 0; n < 4; n++)
        f[n] = i[n] / 255.0f;
    if (edit_mode == 1)
        ColorConvertHSVtoRGB(f[0], f[1], f[2], f[0], f[1], f[2]);

    if (value_changed)
    {
        col[0] = f[0];
        col[1] = f[1];
        col[2] = f[2];
        if (alpha)
            col[3] = f[3];
    }

    PopID();
    EndGroup();

    return value_changed;
}

void ImGui::ColorEditMode(ImGuiColorEditMode mode)
{
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.ColorEditMode = mode;
}


void ImGui::Separator()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    if (window->DC.ColumnsCount > 1)
        PopClipRect();

    float x1 = window->Pos.x;
    float x2 = window->Pos.x + window->Size.x;
    if (!window->DC.GroupStack.empty())
        x1 += window->DC.IndentX;

    const ImRect bb(ImVec2(x1, window->DC.CursorPos.y), ImVec2(x2, window->DC.CursorPos.y+1.0f));
    ItemSize(ImVec2(0.0f, 0.0f)); 
    if (!ItemAdd(bb, 0))
    {
        if (window->DC.ColumnsCount > 1)
            PushColumnClipRect();
        return;
    }

    window->DrawList->AddLine(bb.Min, ImVec2(bb.Max.x,bb.Min.y), GetColorU32(ImGuiCol_Border));

    ImGuiContext& g = *GImGui;
    if (g.LogEnabled)
        LogText("\r\n" "--------------------------------");

    if (window->DC.ColumnsCount > 1)
    {
        PushColumnClipRect();
        window->DC.ColumnsCellMinY = window->DC.CursorPos.y;
    }
}

void ImGui::Spacing()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;
    ItemSize(ImVec2(0,0));
}

void ImGui::Dummy(const ImVec2& size)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    const ImRect bb(window->DC.CursorPos, window->DC.CursorPos + size);
    ItemSize(bb);
    ItemAdd(bb, 0);
}

bool ImGui::IsRectVisible(const ImVec2& size)
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->ClipRect.Overlaps(ImRect(window->DC.CursorPos, window->DC.CursorPos + size));
}

bool ImGui::IsRectVisible(const ImVec2& rect_min, const ImVec2& rect_max)
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->ClipRect.Overlaps(ImRect(rect_min, rect_max));
}


void ImGui::BeginGroup()
{
    ImGuiWindow* window = GetCurrentWindow();

    window->DC.GroupStack.resize(window->DC.GroupStack.Size + 1);
    ImGuiGroupData& group_data = window->DC.GroupStack.back();
    group_data.BackupCursorPos = window->DC.CursorPos;
    group_data.BackupCursorMaxPos = window->DC.CursorMaxPos;
    group_data.BackupIndentX = window->DC.IndentX;
    group_data.BackupGroupOffsetX = window->DC.GroupOffsetX;
    group_data.BackupCurrentLineHeight = window->DC.CurrentLineHeight;
    group_data.BackupCurrentLineTextBaseOffset = window->DC.CurrentLineTextBaseOffset;
    group_data.BackupLogLinePosY = window->DC.LogLinePosY;
    group_data.BackupActiveIdIsAlive = GImGui->ActiveIdIsAlive;
    group_data.AdvanceCursor = true;

    window->DC.GroupOffsetX = window->DC.CursorPos.x - window->Pos.x - window->DC.ColumnsOffsetX;
    window->DC.IndentX = window->DC.GroupOffsetX;
    window->DC.CursorMaxPos = window->DC.CursorPos;
    window->DC.CurrentLineHeight = 0.0f;
    window->DC.LogLinePosY = window->DC.CursorPos.y - 9999.0f;
}

void ImGui::EndGroup()
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();

    (void)( (!!(!window->DC.GroupStack.empty())) || (_wassert(L"!window->DC.GroupStack.empty()", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9244)), 0) );	

    ImGuiGroupData& group_data = window->DC.GroupStack.back();

    ImRect group_bb(group_data.BackupCursorPos, window->DC.CursorMaxPos);
    group_bb.Max.y -= g.Style.ItemSpacing.y;      
    group_bb.Max = ImMax(group_bb.Min, group_bb.Max);

    window->DC.CursorPos = group_data.BackupCursorPos;
    window->DC.CursorMaxPos = ImMax(group_data.BackupCursorMaxPos, window->DC.CursorMaxPos);
    window->DC.CurrentLineHeight = group_data.BackupCurrentLineHeight;
    window->DC.CurrentLineTextBaseOffset = group_data.BackupCurrentLineTextBaseOffset;
    window->DC.IndentX = group_data.BackupIndentX;
    window->DC.GroupOffsetX = group_data.BackupGroupOffsetX;
    window->DC.LogLinePosY = window->DC.CursorPos.y - 9999.0f;

    if (group_data.AdvanceCursor)
    {
        window->DC.CurrentLineTextBaseOffset = ImMax(window->DC.PrevLineTextBaseOffset, group_data.BackupCurrentLineTextBaseOffset);      
        ItemSize(group_bb.GetSize(), group_data.BackupCurrentLineTextBaseOffset);
        ItemAdd(group_bb, 0);
    }

    
    
    const bool active_id_within_group = (!group_data.BackupActiveIdIsAlive && g.ActiveIdIsAlive && g.ActiveId && g.ActiveIdWindow->RootWindow == window->RootWindow);
    if (active_id_within_group)
        window->DC.LastItemId = g.ActiveId;
    if (active_id_within_group && g.HoveredId == g.ActiveId)
        window->DC.LastItemHoveredAndUsable = window->DC.LastItemHoveredRect = true;

    window->DC.GroupStack.pop_back();

    
}






void ImGui::SameLine(float pos_x, float spacing_w)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    if (pos_x != 0.0f)
    {
        if (spacing_w < 0.0f) spacing_w = 0.0f;
        window->DC.CursorPos.x = window->Pos.x - window->Scroll.x + pos_x + spacing_w + window->DC.GroupOffsetX + window->DC.ColumnsOffsetX;
        window->DC.CursorPos.y = window->DC.CursorPosPrevLine.y;
    }
    else
    {
        if (spacing_w < 0.0f) spacing_w = g.Style.ItemSpacing.x;
        window->DC.CursorPos.x = window->DC.CursorPosPrevLine.x + spacing_w;
        window->DC.CursorPos.y = window->DC.CursorPosPrevLine.y;
    }
    window->DC.CurrentLineHeight = window->DC.PrevLineHeight;
    window->DC.CurrentLineTextBaseOffset = window->DC.PrevLineTextBaseOffset;
}

void ImGui::NewLine()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems)
        return;
    if (window->DC.CurrentLineHeight > 0.0f)     
        ItemSize(ImVec2(0,0));
    else
        ItemSize(ImVec2(0.0f, GImGui->FontSize));
}

void ImGui::NextColumn()
{
    ImGuiWindow* window = GetCurrentWindow();
    if (window->SkipItems || window->DC.ColumnsCount <= 1)
        return;

    ImGuiContext& g = *GImGui;
    PopItemWidth();
    PopClipRect();

    window->DC.ColumnsCellMaxY = ImMax(window->DC.ColumnsCellMaxY, window->DC.CursorPos.y);
    if (++window->DC.ColumnsCurrent < window->DC.ColumnsCount)
    {
        
        window->DC.ColumnsOffsetX = GetColumnOffset(window->DC.ColumnsCurrent) - window->DC.IndentX + g.Style.ItemSpacing.x;
        window->DrawList->ChannelsSetCurrent(window->DC.ColumnsCurrent);
    }
    else
    {
        window->DC.ColumnsCurrent = 0;
        window->DC.ColumnsOffsetX = 0.0f;
        window->DC.ColumnsCellMinY = window->DC.ColumnsCellMaxY;
        window->DrawList->ChannelsSetCurrent(0);
    }
    window->DC.CursorPos.x = (float)(int)(window->Pos.x + window->DC.IndentX + window->DC.ColumnsOffsetX);
    window->DC.CursorPos.y = window->DC.ColumnsCellMinY;
    window->DC.CurrentLineHeight = 0.0f;
    window->DC.CurrentLineTextBaseOffset = 0.0f;

    PushColumnClipRect();
    PushItemWidth(GetColumnWidth() * 0.65f);  
}

int ImGui::GetColumnIndex()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.ColumnsCurrent;
}

int ImGui::GetColumnsCount()
{
    ImGuiWindow* window = GetCurrentWindowRead();
    return window->DC.ColumnsCount;
}

static float GetDraggedColumnOffset(int column_index)
{
    
    
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = ImGui::GetCurrentWindowRead();
    (void)( (!!(column_index > 0)) || (_wassert(L"column_index > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9370)), 0) ); 
    (void)( (!!(g.ActiveId == window->DC.ColumnsSetId + ImGuiID(column_index))) || (_wassert(L"g.ActiveId == window->DC.ColumnsSetId + ImGuiID(column_index)", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9371)), 0) );

    float x = g.IO.MousePos.x - g.ActiveIdClickOffset.x - window->Pos.x;
    x = ImClamp(x, ImGui::GetColumnOffset(column_index-1)+g.Style.ColumnsMinSpacing, ImGui::GetColumnOffset(column_index+1)-g.Style.ColumnsMinSpacing);

    return (float)(int)x;
}

float ImGui::GetColumnOffset(int column_index)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindowRead();
    if (column_index < 0)
        column_index = window->DC.ColumnsCurrent;

    if (g.ActiveId)
    {
        const ImGuiID column_id = window->DC.ColumnsSetId + ImGuiID(column_index);
        if (g.ActiveId == column_id)
            return GetDraggedColumnOffset(column_index);
    }

    (void)( (!!(column_index < window->DC.ColumnsData.Size)) || (_wassert(L"column_index < window->DC.ColumnsData.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9393)), 0) );
    const float t = window->DC.ColumnsData[column_index].OffsetNorm;
    const float x_offset = window->DC.ColumnsMinX + t * (window->DC.ColumnsMaxX - window->DC.ColumnsMinX);
    return (float)(int)x_offset;
}

void ImGui::SetColumnOffset(int column_index, float offset)
{
    ImGuiWindow* window = GetCurrentWindow();
    if (column_index < 0)
        column_index = window->DC.ColumnsCurrent;

    (void)( (!!(column_index < window->DC.ColumnsData.Size)) || (_wassert(L"column_index < window->DC.ColumnsData.Size", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9405)), 0) );
    const float t = (offset - window->DC.ColumnsMinX) / (window->DC.ColumnsMaxX - window->DC.ColumnsMinX);
    window->DC.ColumnsData[column_index].OffsetNorm = t;

    const ImGuiID column_id = window->DC.ColumnsSetId + ImGuiID(column_index);
    window->DC.StateStorage->SetFloat(column_id, t);
}

float ImGui::GetColumnWidth(int column_index)
{
    ImGuiWindow* window = GetCurrentWindowRead();
    if (column_index < 0)
        column_index = window->DC.ColumnsCurrent;

    float w = GetColumnOffset(column_index+1) - GetColumnOffset(column_index);
    return w;
}

static void PushColumnClipRect(int column_index)
{
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    if (column_index < 0)
        column_index = window->DC.ColumnsCurrent;

    float x1 = ImFloor(0.5f + window->Pos.x + ImGui::GetColumnOffset(column_index) - 1.0f);
    float x2 = ImFloor(0.5f + window->Pos.x + ImGui::GetColumnOffset(column_index+1) - 1.0f);
    ImGui::PushClipRect(ImVec2(x1,-3.402823466e+38F), ImVec2(x2,+3.402823466e+38F), true);
}

void ImGui::Columns(int columns_count, const char* id, bool border)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();
    (void)( (!!(columns_count >= 1)) || (_wassert(L"columns_count >= 1", L"c:\\biblioteki\\imgui-sfml\\imgui.cpp", (unsigned)(9438)), 0) );

    if (window->DC.ColumnsCount != 1)
    {
        if (window->DC.ColumnsCurrent != 0)
            ItemSize(ImVec2(0,0));   
        PopItemWidth();
        PopClipRect();
        window->DrawList->ChannelsMerge();

        window->DC.ColumnsCellMaxY = ImMax(window->DC.ColumnsCellMaxY, window->DC.CursorPos.y);
        window->DC.CursorPos.y = window->DC.ColumnsCellMaxY;
    }

    
    if (window->DC.ColumnsCount != columns_count && window->DC.ColumnsCount != 1 && window->DC.ColumnsShowBorders && !window->SkipItems)
    {
        const float y1 = window->DC.ColumnsStartPosY;
        const float y2 = window->DC.CursorPos.y;
        for (int i = 1; i < window->DC.ColumnsCount; i++)
        {
            float x = window->Pos.x + GetColumnOffset(i);
            const ImGuiID column_id = window->DC.ColumnsSetId + ImGuiID(i);
            const ImRect column_rect(ImVec2(x-4,y1),ImVec2(x+4,y2));
            if (IsClippedEx(column_rect, &column_id, false))
                continue;

            bool hovered, held;
            ButtonBehavior(column_rect, column_id, &hovered, &held);
            if (hovered || held)
                g.MouseCursor = ImGuiMouseCursor_ResizeEW;

            
            const ImU32 col = GetColorU32(held ? ImGuiCol_ColumnActive : hovered ? ImGuiCol_ColumnHovered : ImGuiCol_Column);
            const float xi = (float)(int)x;
            window->DrawList->AddLine(ImVec2(xi, y1+1.0f), ImVec2(xi, y2), col);

            if (held)
            {
                if (g.ActiveIdIsJustActivated)
                    g.ActiveIdClickOffset.x -= 4;   
                x = GetDraggedColumnOffset(i);
                SetColumnOffset(i, x);
            }
        }
    }

    
    
    PushID(0x11223347 + (id ? 0 : columns_count));
    window->DC.ColumnsSetId = window->GetID(id ? id : "columns");
    PopID();

    
    window->DC.ColumnsCurrent = 0;
    window->DC.ColumnsCount = columns_count;
    window->DC.ColumnsShowBorders = border;

    const float content_region_width = (window->SizeContentsExplicit.x != 0.0f) ? window->SizeContentsExplicit.x : window->Size.x;
    window->DC.ColumnsMinX = window->DC.IndentX; 
    window->DC.ColumnsMaxX = content_region_width - window->Scroll.x - ((window->Flags & ImGuiWindowFlags_NoScrollbar) ? 0 : g.Style.ScrollbarSize);
    window->DC.ColumnsStartPosY = window->DC.CursorPos.y;
    window->DC.ColumnsCellMinY = window->DC.ColumnsCellMaxY = window->DC.CursorPos.y;
    window->DC.ColumnsOffsetX = 0.0f;
    window->DC.CursorPos.x = (float)(int)(window->Pos.x + window->DC.IndentX + window->DC.ColumnsOffsetX);

    if (window->DC.ColumnsCount != 1)
    {
        
        window->DC.ColumnsData.resize(columns_count + 1);
        for (int column_index = 0; column_index < columns_count + 1; column_index++)
        {
            const ImGuiID column_id = window->DC.ColumnsSetId + ImGuiID(column_index);
            KeepAliveID(column_id);
            const float default_t = column_index / (float)window->DC.ColumnsCount;
            const float t = window->DC.StateStorage->GetFloat(column_id, default_t);      
            window->DC.ColumnsData[column_index].OffsetNorm = t;
        }
        window->DrawList->ChannelsSplit(window->DC.ColumnsCount);
        PushColumnClipRect();
        PushItemWidth(GetColumnWidth() * 0.65f);
    }
    else
    {
        window->DC.ColumnsData.resize(0);
    }
}

void ImGui::Indent(float indent_w)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.IndentX += (indent_w > 0.0f) ? indent_w : g.Style.IndentSpacing;
    window->DC.CursorPos.x = window->Pos.x + window->DC.IndentX + window->DC.ColumnsOffsetX;
}

void ImGui::Unindent(float indent_w)
{
    ImGuiContext& g = *GImGui;
    ImGuiWindow* window = GetCurrentWindow();
    window->DC.IndentX -= (indent_w > 0.0f) ? indent_w : g.Style.IndentSpacing;
    window->DC.CursorPos.x = window->Pos.x + window->DC.IndentX + window->DC.ColumnsOffsetX;
}

void ImGui::TreePush(const char* str_id)
{
    ImGuiWindow* window = GetCurrentWindow();
    Indent();
    window->DC.TreeDepth++;
    PushID(str_id ? str_id : "#TreePush");
}

void ImGui::TreePush(const void* ptr_id)
{
    ImGuiWindow* window = GetCurrentWindow();
    Indent();
    window->DC.TreeDepth++;
    PushID(ptr_id ? ptr_id : (const void*)"#TreePush");
}

void ImGui::TreePushRawID(ImGuiID id)
{
    ImGuiWindow* window = GetCurrentWindow();
    Indent();
    window->DC.TreeDepth++;
    window->IDStack.push_back(id);
}

void ImGui::TreePop()
{
    ImGuiWindow* window = GetCurrentWindow();
    Unindent();
    window->DC.TreeDepth--;
    PopID();
}

void ImGui::Value(const char* prefix, bool b)
{
    Text("%s: %s", prefix, (b ? "true" : "false"));
}

void ImGui::Value(const char* prefix, int v)
{
    Text("%s: %d", prefix, v);
}

void ImGui::Value(const char* prefix, unsigned int v)
{
    Text("%s: %d", prefix, v);
}

void ImGui::Value(const char* prefix, float v, const char* float_format)
{
    if (float_format)
    {
        char fmt[64];
        ImFormatString(fmt, ((int)(sizeof(fmt)/sizeof(*fmt))), "%%s: %s", float_format);
        Text(fmt, prefix, v);
    }
    else
    {
        Text("%s: %.3f", prefix, v);
    }
}


void ImGui::ValueColor(const char* prefix, const ImVec4& v)
{
    Text("%s: (%.2f,%.2f,%.2f,%.2f)", prefix, v.x, v.y, v.z, v.w);
    SameLine();
    ColorButton(v, true);
}

void ImGui::ValueColor(const char* prefix, ImU32 v)
{
    Text("%s: %08X", prefix, v);
    SameLine();
    ColorButton(ColorConvertU32ToFloat4(v), true);
}








#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"



















#pragma warning(push)
#pragma warning(disable:4001) 
#line 23 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"
#pragma once
#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"



















#pragma warning(push)
#pragma warning(disable:4001) 
#line 23 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"
#pragma once
#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"



#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"


























































#pragma warning(pop)
#line 89 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"
#line 90 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"

#line 92 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winpackagefamily.h"
#line 27 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"





























































#line 89 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"

















































#line 143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"



#line 147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"






#line 154 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"





#line 160 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"



#line 164 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"











#line 176 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"






































 

















#line 233 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"



#pragma warning(pop)
#line 238 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"
#line 239 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"

#line 241 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\winapifamily.h"
#line 2 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"




















#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



















#pragma warning(push)
#pragma warning(disable:4668) 
#line 23 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"
#pragma warning(disable:4001) 
#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#pragma once

















































































































































































#line 205 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"











#line 217 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"






#line 224 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"


#line 227 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 231 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"
#line 232 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"







#line 240 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"
#line 241 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"






#line 248 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 254 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 256 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 258 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 260 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 262 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"


#line 265 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"
#line 266 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"








#line 275 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 279 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 283 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 291 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#line 295 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 297 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"



#pragma warning(pop)


#line 304 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"
#line 305 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 307 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdkddkver.h"

#line 23 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"





#pragma once
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"

#pragma region Application Family or OneCore Family



















































#line 84 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"




















#line 105 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"





#line 111 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#line 112 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#line 116 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#line 120 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#line 124 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#line 128 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#line 132 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"





#line 138 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"




#line 143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#line 144 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"







#line 152 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#line 153 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"



#pragma warning(disable:4514)

#pragma warning(disable:4103)
#line 160 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"

#pragma warning(push)
#line 163 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#pragma warning(disable:4001)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#line 167 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\excpt.h"








#pragma once


#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 13 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\excpt.h"

__pragma(pack(push, 8)) extern "C" {




typedef enum _EXCEPTION_DISPOSITION
{
    ExceptionContinueExecution,
    ExceptionContinueSearch,
    ExceptionNestedException,
    ExceptionCollidedUnwind
} EXCEPTION_DISPOSITION;






    struct _EXCEPTION_RECORD;
    struct _CONTEXT;

    EXCEPTION_DISPOSITION __cdecl _except_handler(
          struct _EXCEPTION_RECORD* _ExceptionRecord,
          void*                     _EstablisherFrame,
          struct _CONTEXT*       _ContextRecord,
          void*                  _DispatcherContext
        );
















#line 58 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\excpt.h"











unsigned long __cdecl _exception_code(void);
void *        __cdecl _exception_info(void);
int           __cdecl _abnormal_termination(void);










} __pragma(pack(pop))
#line 168 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"

#line 170 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\windows.h"

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\windef.h"













#pragma once


extern "C" {
#line 19 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\windef.h"





#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"











#pragma once

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
















#pragma once
#line 19 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"


#pragma warning(push)
#pragma warning(disable:4668) 
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"



 

#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
  
 #line 32 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

 



  
 #line 39 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

 
  
  
 #line 44 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

#line 46 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"




















#line 67 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"


extern "C" {
#line 71 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"




























#line 100 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"












#line 113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"






































































































#line 216 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
#line 217 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"






































































































#line 320 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"



























































#line 380 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"























































































#line 468 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"



















#line 488 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"





#line 494 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"


#line 497 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"




































































#line 566 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"










#line 577 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"






























#line 608 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
















#line 625 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

















#line 643 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"


}
#line 647 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"



























#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"




























#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"





























































































































































#pragma once
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_undef.h"








































































































































































































































































































































































































































































#line 189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"











































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1065 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"
































































#line 1130 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"






















































#line 1185 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"
#line 1186 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"
#line 1187 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings_strict.h"
#line 675 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
#line 676 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

















#line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"




























































































































#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdv_driverspecs.h"





















#line 23 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\sdv_driverspecs.h"
#line 126 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"



#pragma once
#line 131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"


extern "C" {
#line 135 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"























































































































#line 255 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"

    
    
    
    
    
    
    
    
    
    
    

    
    

#line 272 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"

    
    
    



    
    
    
    
    

    
    
    
    
    
    
    

    
    
    
    



    
    


    
    
    
    
    
    
    
    
    
    
    
    


    
    


    
    


    
    



    
    









    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    


    


    
    
    
    
    

    


    
    
    
    
    

    


    
    
    
    
    

    


    
    
    
    
    


    




    
    
    
    
    

    


    
    
    
    
    


    


    
    
    
    
    
    

    


    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    

    
    
    
    
    

    
    
    
    
    

    
    
    
    
    

    
    
    
    
    

    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    


    
    

    
    
    
    

    

    
    
    

    

    
    
    
    
    
    
    
    
    
    
    
    

    
    


    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    

    
    
    
    
    
    


    
    
    
    
     
    

    
    
        
        
        
        
    
    
    
    
    
    

    
    
    

    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    

    

    
    
    
    
    
    
    
    
    
    
    
#line 699 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"
    
#line 701 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"
    


    
    
    
    
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    

    
    
    
    
    
    

    
    
    
    
    
    
    
    
    

    
    

    
    

    
    
    
    
    
    


    
    
    

    
	

    
    


    
    


    
    
    


    
    
    


    
    











































































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

#line 887 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"

    
    
    

    
    
    


}
#line 899 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"

#line 901 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\driverspecs.h"

#line 696 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"












#line 709 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"


#pragma warning(pop)
#line 713 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"

#line 715 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\specstrings.h"
#line 15 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#pragma region Application Family or OneCore Family





#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"
#line 26 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"
















extern "C" {
#line 44 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"







typedef unsigned long ULONG;
typedef ULONG *PULONG;
typedef unsigned short USHORT;
typedef USHORT *PUSHORT;
typedef unsigned char UCHAR;
typedef UCHAR *PUCHAR;
typedef   char *PSZ;
#line 59 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"













#line 73 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#line 81 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#line 85 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#line 89 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"












#line 102 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"






#line 109 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"



#line 113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"
#line 114 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"


























#line 141 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"




#line 146 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"
#line 147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"







#line 155 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\minwindef.h"

typedef unsigned long       DWORD;
typedef int                 BOOL;
typedef unsigned char       BYTE;
typedef unsigned short      WORD;
typedef float               FLOAT;
typedef FLOAT               *PFLOAT;
typedef BOOL            *PBOOL;
typedef BOOL             *LPBOOL;
typedef BYTE            *PBYTE;
typedef BYTE             *LPBYTE;
typedef int             *PINT;
typedef int              *LPINT;
typedef WORD            *PWORD;
typedef WORD             *LPWORD;
typedef long             *LPLONG;
typedef DWORD           *PDWORD;
typedef DWORD            *LPDWORD;
typedef void             *LPVOID;
typedef const void       *LPCVOID;

typedef int                 INT;
typedef unsigned int        UINT;
typedef unsigned int        *PUINT;



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





















#pragma warning(push)
#pragma warning(disable:4668) 
#pragma warning(disable:4820) 
#line 26 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#pragma warning(disable:4200) 
#pragma warning(disable:4201) 
#pragma warning(disable:4214) 


extern "C" {
#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



















#line 53 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 64 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









#line 74 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 81 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 82 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"






































#pragma once
#line 41 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"


extern "C" {
#line 45 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"

    
    
    

    
    
    

    
    
    #line 57 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"
    

#line 60 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"
    

#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"
    

#line 66 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    


    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    
    

    
    

    
    
    
    
    
    
    

    
    

    
    
    
    
    
    

    
    

    
    
    
    
    
    
    

    
    

    
    
    
    
    
    
    

    
    

    
    
    
    
    
















}
#line 258 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"

#line 260 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\kernelspecs.h"
#line 87 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 91 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





#line 97 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 99 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









#line 109 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







#line 121 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


#line 124 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









#line 134 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 138 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

















#line 156 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





















#line 178 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"






















#pragma warning(push)
#pragma warning(disable:4668) 
#line 26 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"









#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
 


#line 40 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
  
   
  

#line 45 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
  typedef unsigned long POINTER_64_INT;
 #line 47 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
 
#line 49 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"



#line 53 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"

#line 55 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"







#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"





#pragma once
#line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"


extern "C" {
#line 74 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"

typedef signed char         INT8, *PINT8;
typedef signed short        INT16, *PINT16;
typedef signed int          INT32, *PINT32;
typedef signed __int64      INT64, *PINT64;
typedef unsigned char       UINT8, *PUINT8;
typedef unsigned short      UINT16, *PUINT16;
typedef unsigned int        UINT32, *PUINT32;
typedef unsigned __int64    UINT64, *PUINT64;





typedef signed int LONG32, *PLONG32;





typedef unsigned int ULONG32, *PULONG32;
typedef unsigned int DWORD32, *PDWORD32;







#line 104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"

















#line 122 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"











#line 134 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
    typedef  int INT_PTR, *PINT_PTR;
    typedef  unsigned int UINT_PTR, *PUINT_PTR;

    typedef  long LONG_PTR, *PLONG_PTR;
    typedef  unsigned long ULONG_PTR, *PULONG_PTR;

    

#line 143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
#line 144 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"





























































































































































































typedef unsigned short UHALF_PTR, *PUHALF_PTR;
typedef short HALF_PTR, *PHALF_PTR;
typedef  long SHANDLE_PTR;
typedef  unsigned long HANDLE_PTR;

















__inline
void * __ptr64
PtrToPtr64(
    const void *p
    )
{
    return((void * __ptr64) (unsigned __int64) (ULONG_PTR)p );
}

__inline
void *
Ptr64ToPtr(
    const void * __ptr64 p
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) p);
}

__inline
void * __ptr64
HandleToHandle64(
    const void *h
    )
{
    return((void * __ptr64)(__int64)(LONG_PTR)h );
}

__inline
void *
Handle64ToHandle(
    const void * __ptr64 h
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) h );
}
#line 390 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"






#line 397 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"























typedef ULONG_PTR SIZE_T, *PSIZE_T;
typedef LONG_PTR SSIZE_T, *PSSIZE_T;









































#line 464 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"





typedef ULONG_PTR DWORD_PTR, *PDWORD_PTR;





typedef __int64 LONG64, *PLONG64;






typedef unsigned __int64 ULONG64, *PULONG64;
typedef unsigned __int64 DWORD64, *PDWORD64;







typedef ULONG_PTR KAFFINITY;
typedef KAFFINITY *PKAFFINITY;




}
#line 499 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"


#pragma warning(pop)
#line 503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"

#line 505 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\basetsd.h"
#line 180 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







#line 188 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 196 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 197 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 205 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 212 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 213 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








#line 222 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 223 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 227 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 234 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 235 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 242 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 243 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 251 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 258 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 259 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




#line 264 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 266 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 267 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 274 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 275 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 282 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 283 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"















#line 299 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 300 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






#line 307 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 308 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




#line 313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 315 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 316 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




#line 321 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 323 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 324 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








#line 333 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 334 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




















#line 355 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










#line 366 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 367 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"














#line 382 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







typedef void *PVOID;
typedef void * __ptr64 PVOID64;








#line 400 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





#line 406 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
















#line 423 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








typedef char CHAR;
typedef short SHORT;
typedef long LONG;

typedef int INT;
#line 437 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 438 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






typedef wchar_t WCHAR;    



#line 449 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef WCHAR *PWCHAR, *LPWCH, *PWCH;
typedef const WCHAR *LPCWCH, *PCWCH;

typedef   WCHAR *NWPSTR, *LPWSTR, *PWSTR;
typedef   PWSTR *PZPWSTR;
typedef   const PWSTR *PCZPWSTR;
typedef   WCHAR  *LPUWSTR, *PUWSTR;
typedef   const WCHAR *LPCWSTR, *PCWSTR;
typedef   PCWSTR *PZPCWSTR;
typedef   const PCWSTR *PCZPCWSTR;
typedef   const WCHAR  *LPCUWSTR, *PCUWSTR;

typedef   WCHAR *PZZWSTR;
typedef   const WCHAR *PCZZWSTR;
typedef   WCHAR  *PUZZWSTR;
typedef   const WCHAR  *PCUZZWSTR;

typedef  WCHAR *PNZWCH;
typedef  const WCHAR *PCNZWCH;
typedef  WCHAR  *PUNZWCH;
typedef  const WCHAR  *PCUNZWCH;



typedef const WCHAR *LPCWCHAR, *PCWCHAR;
typedef const WCHAR  *LPCUWCHAR, *PCUWCHAR;





typedef unsigned long UCSCHAR;



















typedef UCSCHAR *PUCSCHAR;
typedef const UCSCHAR *PCUCSCHAR;

typedef UCSCHAR *PUCSSTR;
typedef UCSCHAR  *PUUCSSTR;

typedef const UCSCHAR *PCUCSSTR;
typedef const UCSCHAR  *PCUUCSSTR;

typedef UCSCHAR  *PUUCSCHAR;
typedef const UCSCHAR  *PCUUCSCHAR;

#line 514 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





typedef CHAR *PCHAR, *LPCH, *PCH;
typedef const CHAR *LPCCH, *PCCH;

typedef   CHAR *NPSTR, *LPSTR, *PSTR;
typedef   PSTR *PZPSTR;
typedef   const PSTR *PCZPSTR;
typedef   const CHAR *LPCSTR, *PCSTR;
typedef   PCSTR *PZPCSTR;
typedef   const PCSTR *PCZPCSTR;

typedef   CHAR *PZZSTR;
typedef   const CHAR *PCZZSTR;

typedef  CHAR *PNZCH;
typedef  const CHAR *PCNZCH;







typedef WCHAR TCHAR, *PTCHAR;
typedef WCHAR TBYTE , *PTBYTE ;

#line 545 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef LPWCH LPTCH, PTCH;
typedef LPCWCH LPCTCH, PCTCH;
typedef LPWSTR PTSTR, LPTSTR;
typedef LPCWSTR PCTSTR, LPCTSTR;
typedef LPUWSTR PUTSTR, LPUTSTR;
typedef LPCUWSTR PCUTSTR, LPCUTSTR;
typedef LPWSTR LP;
typedef PZZWSTR PZZTSTR;
typedef PCZZWSTR PCZZTSTR;
typedef PUZZWSTR PUZZTSTR;
typedef PCUZZWSTR PCUZZTSTR;
typedef PZPWSTR PZPTSTR;
typedef PNZWCH PNZTCH;
typedef PCNZWCH PCNZTCH;
typedef PUNZWCH PUNZTCH;
typedef PCUNZWCH PCUNZTCH;





















#line 584 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



typedef SHORT *PSHORT;  
typedef LONG *PLONG;    








typedef struct _PROCESSOR_NUMBER {
    WORD   Group;
    BYTE  Number;
    BYTE  Reserved;
} PROCESSOR_NUMBER, *PPROCESSOR_NUMBER;






typedef struct _GROUP_AFFINITY {
    KAFFINITY Mask;
    WORD   Group;
    WORD   Reserved[3];
} GROUP_AFFINITY, *PGROUP_AFFINITY;





#line 619 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 623 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










typedef void *HANDLE;


#line 637 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 639 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 643 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
typedef HANDLE *PHANDLE;







typedef BYTE   FCHAR;
typedef WORD   FSHORT;
typedef DWORD  FLONG;










typedef   long HRESULT;
#line 666 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 667 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




    
    
    




#line 679 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









#line 689 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













#line 703 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




























typedef char CCHAR;          
typedef DWORD LCID;         
typedef PDWORD PLCID;       
typedef WORD   LANGID;      








typedef enum {
    UNSPECIFIED_COMPARTMENT_ID = 0,
    DEFAULT_COMPARTMENT_ID
} COMPARTMENT_ID, *PCOMPARTMENT_ID;

#line 749 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
























#line 774 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
typedef struct _FLOAT128 {
    __int64 LowPart;
    __int64 HighPart;
} FLOAT128;

typedef FLOAT128 *PFLOAT128;









typedef __int64 LONGLONG;
typedef unsigned __int64 ULONGLONG;


















#line 810 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef LONGLONG *PLONGLONG;
typedef ULONGLONG *PULONGLONG;



typedef LONGLONG USN;





#line 823 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    } ;
    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;
    LONGLONG QuadPart;
} LARGE_INTEGER;
#line 835 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef LARGE_INTEGER *PLARGE_INTEGER;





#line 843 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
typedef union _ULARGE_INTEGER {
    struct {
        DWORD LowPart;
        DWORD HighPart;
    } ;
    struct {
        DWORD LowPart;
        DWORD HighPart;
    } u;
    ULONGLONG QuadPart;
} ULARGE_INTEGER;
#line 855 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef ULARGE_INTEGER *PULARGE_INTEGER;





typedef LONG_PTR RTL_REFERENCE_COUNT, *PRTL_REFERENCE_COUNT;
typedef LONG RTL_REFERENCE_COUNT32, *PRTL_REFERENCE_COUNT32;









typedef struct _LUID {
    DWORD LowPart;
    LONG HighPart;
} LUID, *PLUID;


typedef ULONGLONG  DWORDLONG;
typedef DWORDLONG *PDWORDLONG;





























#line 914 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"












ULONGLONG
__stdcall
Int64ShllMod32 (
      ULONGLONG Value,
      DWORD ShiftCount
    );

LONGLONG
__stdcall
Int64ShraMod32 (
      LONGLONG Value,
      DWORD ShiftCount
    );

ULONGLONG
__stdcall
Int64ShrlMod32 (
      ULONGLONG Value,
      DWORD ShiftCount
    );


#pragma warning(push)
#line 950 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#pragma warning(disable:4035 4793)               

__inline ULONGLONG
__stdcall
Int64ShllMod32 (
      ULONGLONG Value,
      DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shld    edx, eax, cl
        shl     eax, cl
    }
}

__inline LONGLONG
__stdcall
Int64ShraMod32 (
      LONGLONG Value,
      DWORD ShiftCount
    )
{
    __asm {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        sar     edx, cl
    }
}

__inline ULONGLONG
__stdcall
Int64ShrlMod32 (
      ULONGLONG Value,
      DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        shr     edx, cl
    }
}


#pragma warning(pop)


#line 1005 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





#line 1011 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






extern "C" {
#line 1019 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









































#line 1061 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








unsigned int
__cdecl
_rotl (
      unsigned int Value,
      int Shift
    );

unsigned __int64
__cdecl
_rotl64 (
      unsigned __int64 Value,
      int Shift
    );

unsigned int
__cdecl
_rotr (
      unsigned int Value,
      int Shift
    );

unsigned __int64
__cdecl
_rotr64 (
      unsigned __int64 Value,
      int Shift
    );

#pragma intrinsic(_rotl)
#pragma intrinsic(_rotl64)
#pragma intrinsic(_rotr)
#pragma intrinsic(_rotr64)

#line 1103 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


}
#line 1107 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





typedef BYTE  BOOLEAN;           
typedef BOOLEAN *PBOOLEAN;       





typedef struct _LIST_ENTRY {
   struct _LIST_ENTRY *Flink;
   struct _LIST_ENTRY *Blink;
} LIST_ENTRY, *PLIST_ENTRY, * PRLIST_ENTRY;






typedef struct _SINGLE_LIST_ENTRY {
    struct _SINGLE_LIST_ENTRY *Next;
} SINGLE_LIST_ENTRY, *PSINGLE_LIST_ENTRY;








typedef struct LIST_ENTRY32 {
    DWORD Flink;
    DWORD Blink;
} LIST_ENTRY32;
typedef LIST_ENTRY32 *PLIST_ENTRY32;

typedef struct LIST_ENTRY64 {
    ULONGLONG Flink;
    ULONGLONG Blink;
} LIST_ENTRY64;
typedef LIST_ENTRY64 *PLIST_ENTRY64;


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"




















#line 22 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
typedef struct _GUID {
    unsigned long  Data1;
    unsigned short Data2;
    unsigned short Data3;
    unsigned char  Data4[ 8 ];
} GUID;
#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"




































#line 67 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"








typedef GUID *LPGUID;
#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"



typedef const GUID *LPCGUID;
#line 82 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"




typedef GUID IID;
typedef IID *LPIID;


typedef GUID CLSID;
typedef CLSID *LPCLSID;


typedef GUID FMTID;
typedef FMTID *LPFMTID;







#line 104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"







#line 112 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"







#line 121 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 122 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"







#line 130 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"







#line 139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 140 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"

#line 142 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"








__inline int InlineIsEqualGUID(const GUID & rguid1, const GUID & rguid2)
{
   return (
      ((unsigned long *) &rguid1)[0] == ((unsigned long *) &rguid2)[0] &&
      ((unsigned long *) &rguid1)[1] == ((unsigned long *) &rguid2)[1] &&
      ((unsigned long *) &rguid1)[2] == ((unsigned long *) &rguid2)[2] &&
      ((unsigned long *) &rguid1)[3] == ((unsigned long *) &rguid2)[3]);
}

__inline int IsEqualGUID(const GUID & rguid1, const GUID & rguid2)
{
    return !memcmp(&rguid1, &rguid2, sizeof(GUID));
}











#line 175 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"

















__inline bool operator==(const GUID & guidOne, const GUID & guidOther)
{
    return !!IsEqualGUID(guidOne,guidOther);
}

__inline bool operator!=(const GUID & guidOne, const GUID & guidOther)
{
    return !(guidOne == guidOther);
}
#line 202 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 203 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 205 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 206 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\guiddef.h"
#line 1154 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




typedef struct  _OBJECTID {     
    GUID Lineage;
    DWORD Uniquifier;
} OBJECTID;
#line 1163 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













































































#pragma region Application Family or OneCore Family




extern "C++" 
template <typename T, size_t N>
char (*RtlpNumberOf(  T (&)[N] ))[N];



#line 1257 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#pragma endregion











































#line 1302 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





#line 1308 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









































#line 1350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




























typedef
 
 
EXCEPTION_DISPOSITION
__stdcall
EXCEPTION_ROUTINE (
      struct _EXCEPTION_RECORD *ExceptionRecord,
      PVOID EstablisherFrame,
      struct _CONTEXT *ContextRecord,
      PVOID DispatcherContext
    );

typedef EXCEPTION_ROUTINE *PEXCEPTION_ROUTINE;















































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 2303 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


























#line 2330 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


























#line 2357 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











extern "C++" {

    template <size_t S>
    struct _ENUM_FLAG_INTEGER_FOR_SIZE;

    template <>
    struct _ENUM_FLAG_INTEGER_FOR_SIZE<1>
    {
        typedef INT8 type;
    };

    template <>
    struct _ENUM_FLAG_INTEGER_FOR_SIZE<2>
    {
        typedef INT16 type;
    };

    template <>
    struct _ENUM_FLAG_INTEGER_FOR_SIZE<4>
    {
        typedef INT32 type;
    };

    template <>
    struct _ENUM_FLAG_INTEGER_FOR_SIZE<8>
    {
        typedef INT64 type;
    };

    
    template <class T>
    struct _ENUM_FLAG_SIZED_INTEGER
    {
        typedef typename _ENUM_FLAG_INTEGER_FOR_SIZE<sizeof(T)>::type type;
    };

}





#line 2411 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













#line 2425 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


















  




























































#line 2505 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
  
#line 2507 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 2508 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





typedef ULONG_PTR KSPIN_LOCK;
typedef KSPIN_LOCK *PKSPIN_LOCK;







typedef struct __declspec(align(16)) _M128A {
    ULONGLONG Low;
    LONGLONG High;
} M128A, *PM128A;





typedef struct __declspec(align(16)) _XSAVE_FORMAT {
    WORD   ControlWord;
    WORD   StatusWord;
    BYTE  TagWord;
    BYTE  Reserved1;
    WORD   ErrorOpcode;
    DWORD ErrorOffset;
    WORD   ErrorSelector;
    WORD   Reserved2;
    DWORD DataOffset;
    WORD   DataSelector;
    WORD   Reserved3;
    DWORD MxCsr;
    DWORD MxCsr_Mask;
    M128A FloatRegisters[8];






#line 2553 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

    M128A XmmRegisters[8];
    BYTE  Reserved4[224];

#line 2558 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

} XSAVE_FORMAT, *PXSAVE_FORMAT;



typedef struct __declspec(align(8)) _XSAVE_AREA_HEADER {
    DWORD64 Mask;
    DWORD64 CompactionMask;
    DWORD64 Reserved2[6];
} XSAVE_AREA_HEADER, *PXSAVE_AREA_HEADER;

typedef struct __declspec(align(16)) _XSAVE_AREA {
    XSAVE_FORMAT LegacyState;
    XSAVE_AREA_HEADER Header;
} XSAVE_AREA, *PXSAVE_AREA;

typedef struct _XSTATE_CONTEXT {
    DWORD64 Mask;
    DWORD Length;
    DWORD Reserved1;
      PXSAVE_AREA Area;


    DWORD Reserved2;
#line 2583 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

    PVOID Buffer;


    DWORD Reserved3;
#line 2589 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

} XSTATE_CONTEXT, *PXSTATE_CONTEXT;





typedef struct _SCOPE_TABLE_AMD64 {
    DWORD Count;
    struct {
        DWORD BeginAddress;
        DWORD EndAddress;
        DWORD HandlerAddress;
        DWORD JumpTarget;
    } ScopeRecord[1];
} SCOPE_TABLE_AMD64, *PSCOPE_TABLE_AMD64;



























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































typedef struct _SCOPE_TABLE_ARM {
    DWORD Count;
    struct
    {
        DWORD BeginAddress;
        DWORD EndAddress;
        DWORD HandlerAddress;
        DWORD JumpTarget;
    } ScopeRecord[1];
} SCOPE_TABLE_ARM, *PSCOPE_TABLE_ARM;


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































typedef struct _SCOPE_TABLE_ARM64 {
    DWORD Count;
    struct
    {
        DWORD BeginAddress;
        DWORD EndAddress;
        DWORD HandlerAddress;
        DWORD JumpTarget;
    } ScopeRecord[1];
} SCOPE_TABLE_ARM64, *PSCOPE_TABLE_ARM64;





































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 6244 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







typedef struct _KNONVOLATILE_CONTEXT_POINTERS_ARM64 {

    PDWORD64 X19;
    PDWORD64 X20;
    PDWORD64 X21;
    PDWORD64 X22;
    PDWORD64 X23;
    PDWORD64 X24;
    PDWORD64 X25;
    PDWORD64 X26;
    PDWORD64 X27;
    PDWORD64 X28;
    PDWORD64 Fp;
    PDWORD64 Lr;

    PDWORD64 D8;
    PDWORD64 D9;
    PDWORD64 D10;
    PDWORD64 D11;
    PDWORD64 D12;
    PDWORD64 D13;
    PDWORD64 D14;
    PDWORD64 D15;

} KNONVOLATILE_CONTEXT_POINTERS_ARM64, *PKNONVOLATILE_CONTEXT_POINTERS_ARM64;





#line 6282 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"












#line 6295 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




extern "C" {
#line 6301 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


















#line 6320 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




















#line 6341 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





void
__int2c (
    void
    );

#pragma intrinsic(__int2c)





#line 6358 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"























#line 6382 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 6384 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





























































#line 6446 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 6447 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


}
#line 6451 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"














#line 6466 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 6470 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











#pragma warning(push)
#line 6483 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

                                


#pragma warning( pop )


#line 6491 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 6493 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
#line 6494 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








extern "C" {
#line 6504 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




















 
BOOLEAN
_bittest (
      LONG const *Base,
      LONG Offset
    );

BOOLEAN
_bittestandcomplement (
      LONG *Base,
      LONG Offset
    );

BOOLEAN
_bittestandset (
      LONG *Base,
      LONG Offset
    );

BOOLEAN
_bittestandreset (
      LONG *Base,
      LONG Offset
    );

BOOLEAN
_interlockedbittestandset (
       LONG volatile *Base,
      LONG Offset
    );

BOOLEAN
_interlockedbittestandreset (
       LONG volatile *Base,
      LONG Offset
    );

#pragma intrinsic(_bittest)
#pragma intrinsic(_bittestandcomplement)
#pragma intrinsic(_bittestandset)
#pragma intrinsic(_bittestandreset)
#pragma intrinsic(_interlockedbittestandset)
#pragma intrinsic(_interlockedbittestandreset)








 
BOOLEAN
_BitScanForward (
      DWORD *Index,
      DWORD Mask
    );

 
BOOLEAN
_BitScanReverse (
      DWORD *Index,
      DWORD Mask
    );

#pragma intrinsic(_BitScanForward)
#pragma intrinsic(_BitScanReverse)

 
__forceinline
BOOLEAN
_InlineBitScanForward64 (
      DWORD *Index,
      DWORD64 Mask
    )
{
    if (_BitScanForward(Index, (DWORD)Mask)) {
        return 1;
    }

    if (_BitScanForward(Index, (DWORD)(Mask >> 32))) {
        *Index += 32;
        return 1;
    }

    return 0;
}



 
__forceinline
BOOLEAN
_InlineBitScanReverse64 (
      DWORD *Index,
      DWORD64 Mask
    )
{
    if (_BitScanReverse(Index, (DWORD)(Mask >> 32))) {
        *Index += 32;
        return 1;
    }

    if (_BitScanReverse(Index, (DWORD)Mask)) {
        return 1;
    }

    return 0;
}



#line 6637 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



























SHORT
_InterlockedIncrement16 (
       SHORT volatile *Addend
    );

SHORT
_InterlockedDecrement16 (
       SHORT volatile *Addend
    );

SHORT
_InterlockedCompareExchange16 (
       SHORT volatile *Destination,
      SHORT ExChange,
      SHORT Comperand
    );

LONG64
_InterlockedCompareExchange64 (
       LONG64 volatile *Destination,
      LONG64 ExChange,
      LONG64 Comperand
    );

#pragma intrinsic(_InterlockedIncrement16)
#pragma intrinsic(_InterlockedDecrement16)
#pragma intrinsic(_InterlockedCompareExchange16)
#pragma intrinsic(_InterlockedCompareExchange64)

#line 6694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
















































LONG
_InterlockedAnd (
       LONG volatile *Destination,
      LONG Value
    );

LONG
_InterlockedOr (
       LONG volatile *Destination,
      LONG Value
    );

LONG
_InterlockedXor (
       LONG volatile *Destination,
      LONG Value
    );

LONG
__cdecl
_InterlockedIncrement (
       LONG volatile *Addend
    );

LONG
__cdecl
_InterlockedDecrement (
       LONG volatile *Addend
    );

LONG
__cdecl
_InterlockedExchange (
       LONG volatile *Target,
      LONG Value
    );

LONG
__cdecl
_InterlockedExchangeAdd (
       LONG volatile *Addend,
      LONG Value
    );

__forceinline
LONG
_InlineInterlockedAdd (
       LONG volatile *Addend,
      LONG Value
    )

{

    return _InterlockedExchangeAdd(Addend, Value) + Value;
}

LONG
__cdecl
_InterlockedCompareExchange (
       LONG volatile * Destination,
      LONG ExChange,
      LONG Comperand
    );



__forceinline
 
PVOID
_InlineInterlockedExchangePointer(
      
#line 6815 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
     PVOID volatile * Destination,
      PVOID Value
    )
{
    return (PVOID)_InterlockedExchange((LONG volatile *) Destination,
                                      (LONG) Value);
}






__forceinline
 
PVOID
_InlineInterlockedCompareExchangePointer (
      
#line 6835 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
     PVOID volatile * Destination,
      PVOID ExChange,
      PVOID Comperand
    )
{
    return (PVOID)_InterlockedCompareExchange((LONG volatile *) Destination,
                                             (LONG) ExChange,
                                             (LONG) Comperand);
}










#pragma intrinsic(_InterlockedAnd)
#pragma intrinsic(_InterlockedOr)
#pragma intrinsic(_InterlockedXor)
#pragma intrinsic(_InterlockedIncrement)
#pragma intrinsic(_InterlockedDecrement)
#pragma intrinsic(_InterlockedExchange)
#pragma intrinsic(_InterlockedExchangeAdd)
#pragma intrinsic(_InterlockedCompareExchange)








CHAR
_InterlockedExchange8 (
       CHAR volatile *Target,
      CHAR Value
    );

SHORT
_InterlockedExchange16 (
       SHORT volatile *Destination,
      SHORT ExChange
    );

#pragma intrinsic(_InterlockedExchange8)
#pragma intrinsic(_InterlockedExchange16)

#line 6886 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"














char 
_InterlockedExchangeAdd8 (
       char volatile * _Addend, 
      char _Value
    );

char
_InterlockedAnd8 (
       char volatile *Destination,
      char Value
    );

char
_InterlockedOr8 (
       char volatile *Destination,
      char Value
    );

char
_InterlockedXor8 (
       char volatile *Destination,
      char Value
    );

SHORT
_InterlockedAnd16 (
       SHORT volatile *Destination,
      SHORT Value
    );

SHORT
_InterlockedXor16(
       SHORT volatile *Destination,
      SHORT Value
    );

SHORT
_InterlockedCompareExchange16 (
       SHORT volatile *Destination,
      SHORT ExChange,
      SHORT Comperand
    );

SHORT
_InterlockedOr16 (
       SHORT volatile *Destination,
      SHORT Value
    );

SHORT
_InterlockedIncrement16 (
       SHORT volatile *Destination
    );

SHORT
_InterlockedDecrement16 (
       SHORT volatile *Destination
    );

#pragma intrinsic (_InterlockedExchangeAdd8)
#pragma intrinsic (_InterlockedAnd8)
#pragma intrinsic (_InterlockedOr8)
#pragma intrinsic (_InterlockedXor8)
#pragma intrinsic (_InterlockedAnd16)
#pragma intrinsic (_InterlockedOr16)
#pragma intrinsic (_InterlockedXor16)
#pragma intrinsic (_InterlockedCompareExchange16)
#pragma intrinsic (_InterlockedIncrement16)
#pragma intrinsic (_InterlockedDecrement16)

#line 6971 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








__forceinline
LONG64
_InlineInterlockedAnd64 (
       LONG64 volatile *Destination,
      LONG64 Value
    )
{
    LONG64 Old;

    do {
        Old = *Destination;
    } while (_InterlockedCompareExchange64(Destination,
                                          Old & Value,
                                          Old) != Old);

    return Old;
}






__forceinline
LONG64
_InlineInterlockedAdd64 (
       LONG64 volatile *Addend,
      LONG64 Value
    )
{
    LONG64 Old;

    do {
        Old = *Addend;
    } while (_InterlockedCompareExchange64(Addend,
                                          Old + Value,
                                          Old) != Old);

    return Old + Value;
}







#line 7027 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













LONG
_InterlockedXor (
       LONG volatile *Target,
      LONG Set
    );

#pragma intrinsic(_InterlockedXor)





LONGLONG
__forceinline
_InlineInterlockedOr64 (
       LONGLONG volatile *Destination,
      LONGLONG Value
    )
{
    LONGLONG Old;

    do {
        Old = *Destination;
    } while (_InterlockedCompareExchange64(Destination,
                                          Old | Value,
                                          Old) != Old);

    return Old;
}



__forceinline
LONG64
_InlineInterlockedXor64 (
       LONG64 volatile *Destination,
      LONG64 Value
    )
{
    LONG64 Old;

    do {
        Old = *Destination;
    } while (_InterlockedCompareExchange64(Destination,
                                          Old ^ Value,
                                          Old) != Old);

    return Old;
}



LONGLONG
__forceinline
_InlineInterlockedIncrement64 (
       LONGLONG volatile *Addend
    )
{
    LONGLONG Old;

    do {
        Old = *Addend;
    } while (_InterlockedCompareExchange64(Addend,
                                          Old + 1,
                                          Old) != Old);

    return Old + 1;
}






__forceinline
LONGLONG
_InlineInterlockedDecrement64 (
       LONGLONG volatile *Addend
    )
{
    LONGLONG Old;

    do {
        Old = *Addend;
    } while (_InterlockedCompareExchange64(Addend,
                                          Old - 1,
                                          Old) != Old);

    return Old - 1;
}






__forceinline
LONGLONG
_InlineInterlockedExchange64 (
       LONGLONG volatile *Target,
      LONGLONG Value
    )
{
    LONGLONG Old;

    do {
        Old = *Target;
    } while (_InterlockedCompareExchange64(Target,
                                          Value,
                                          Old) != Old);

    return Old;
}






__forceinline
LONGLONG
_InlineInterlockedExchangeAdd64 (
       LONGLONG volatile *Addend,
      LONGLONG Value
    )
{
    LONGLONG Old;

    do {
        Old = *Addend;
    } while (_InterlockedCompareExchange64(Addend,
                                          Old + Value,
                                          Old) != Old);

    return Old;
}








void
__incfsbyte (
      DWORD Offset
    );

void
__addfsbyte (
      DWORD Offset,
      BYTE  Value
    );

void
__incfsword (
      DWORD Offset
    );

void
__addfsword (
      DWORD Offset,
      WORD   Value
    );

void
__incfsdword (
      DWORD Offset
    );

void
__addfsdword (
      DWORD Offset,
      DWORD Value
    );

#pragma intrinsic(__incfsbyte)
#pragma intrinsic(__addfsbyte)
#pragma intrinsic(__incfsword)
#pragma intrinsic(__addfsword)
#pragma intrinsic(__incfsdword)
#pragma intrinsic(__addfsdword)

#line 7225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













void
__cpuidex (
    int CPUInfo[4],
    int Function,
    int SubLeaf
    );

#pragma intrinsic(__cpuidex)

#line 7248 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







BYTE 
__readfsbyte (
      DWORD Offset
    );

WORD  
__readfsword (
      DWORD Offset
    );

DWORD
__readfsdword (
      DWORD Offset
    );

void
__writefsbyte (
      DWORD Offset,
      BYTE  Data
    );

void
__writefsword (
      DWORD Offset,
      WORD   Data
    );

void
__writefsdword (
      DWORD Offset,
      DWORD Data
    );

#pragma intrinsic(__readfsbyte)
#pragma intrinsic(__readfsword)
#pragma intrinsic(__readfsdword)
#pragma intrinsic(__writefsbyte)
#pragma intrinsic(__writefsword)
#pragma intrinsic(__writefsdword)

#line 7296 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



void
_mm_pause (
    void
    );

#pragma intrinsic(_mm_pause)



#line 7309 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


}
#line 7313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 7315 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







#pragma prefast(push)
#pragma warning(push)
#pragma prefast(disable: 6001 28113, "The barrier variable is accessed only to create a side effect.")
#pragma warning(disable: 4793)
__forceinline
void
MemoryBarrier (
    void
    )
{
    LONG Barrier;

    _InterlockedOr(&Barrier, 0);
    return;
}

#pragma warning(pop)
#pragma prefast(pop)

#line 7342 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"












void
_mm_prefetch (
      CHAR const *a,
      int sel
    );

#pragma intrinsic(_mm_prefetch)






















DWORD64
__readpmc (
      DWORD Counter
    );

#pragma intrinsic(__readpmc)







DWORD64
__rdtsc (
    void
    );

#pragma intrinsic(__rdtsc)

#line 7404 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 7406 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






__inline PVOID GetFiberData( void )    { return *(PVOID *) (ULONG_PTR) __readfsdword (0x10);}
__inline PVOID GetCurrentFiber( void ) { return (PVOID) (ULONG_PTR) __readfsdword (0x10);}

#line 7416 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 7420 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
























































#line 7477 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _FLOATING_SAVE_AREA {
    DWORD   ControlWord;
    DWORD   StatusWord;
    DWORD   TagWord;
    DWORD   ErrorOffset;
    DWORD   ErrorSelector;
    DWORD   DataOffset;
    DWORD   DataSelector;
    BYTE    RegisterArea[80];
    DWORD   Spare0;
} FLOATING_SAVE_AREA;

typedef FLOATING_SAVE_AREA *PFLOATING_SAVE_AREA;









typedef char __C_ASSERT__[(sizeof(XSAVE_FORMAT) == 512)?1:-1];

#line 7503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push,4)


#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 34 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 7508 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











typedef struct _CONTEXT {

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DWORD ContextFlags;

    
    
    
    
    

    DWORD   Dr0;
    DWORD   Dr1;
    DWORD   Dr2;
    DWORD   Dr3;
    DWORD   Dr6;
    DWORD   Dr7;

    
    
    
    

    FLOATING_SAVE_AREA FloatSave;

    
    
    
    

    DWORD   SegGs;
    DWORD   SegFs;
    DWORD   SegEs;
    DWORD   SegDs;

    
    
    
    

    DWORD   Edi;
    DWORD   Esi;
    DWORD   Ebx;
    DWORD   Edx;
    DWORD   Ecx;
    DWORD   Eax;

    
    
    
    

    DWORD   Ebp;
    DWORD   Eip;
    DWORD   SegCs;              
    DWORD   EFlags;             
    DWORD   Esp;
    DWORD   SegSs;

    
    
    
    
    

    BYTE    ExtendedRegisters[512];

} CONTEXT;

typedef CONTEXT *PCONTEXT;

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 37 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 7608 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



#line 7612 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





typedef struct _LDT_ENTRY {
    WORD    LimitLow;
    WORD    BaseLow;
    union {
        struct {
            BYTE    BaseMid;
            BYTE    Flags1;     
            BYTE    Flags2;     
            BYTE    BaseHi;
        } Bytes;
        struct {
            DWORD   BaseMid : 8;
            DWORD   Type : 5;
            DWORD   Dpl : 2;
            DWORD   Pres : 1;
            DWORD   LimitHi : 4;
            DWORD   Sys : 1;
            DWORD   Reserved_0 : 1;
            DWORD   Default_Big : 1;
            DWORD   Granularity : 1;
            DWORD   BaseHi : 8;
        } Bits;
    } HighWord;
} LDT_ENTRY, *PLDT_ENTRY;

#line 7643 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








extern "C" {
#line 7653 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

__forceinline
CHAR
ReadAcquire8 (
       CHAR const volatile *Source
    )

{

    CHAR Value;

    Value = *Source;
    return Value;
}

__forceinline
CHAR
ReadNoFence8 (
       CHAR const volatile *Source
    )

{

    CHAR Value;

    Value = *Source;
    return Value;
}

__forceinline
void
WriteRelease8 (
       CHAR volatile *Destination,
      CHAR Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
void
WriteNoFence8 (
       CHAR volatile *Destination,
      CHAR Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
SHORT
ReadAcquire16 (
       SHORT const volatile *Source
    )

{

    SHORT Value;

    Value = *Source;
    return Value;
}

__forceinline
SHORT
ReadNoFence16 (
       SHORT const volatile *Source
    )

{

    SHORT Value;

    Value = *Source;
    return Value;
}

__forceinline
void
WriteRelease16 (
       SHORT volatile *Destination,
      SHORT Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
void
WriteNoFence16 (
       SHORT volatile *Destination,
      SHORT Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
LONG
ReadAcquire (
       LONG const volatile *Source
    )

{

    LONG Value;

    Value = *Source;
    return Value;
}

__forceinline
LONG
ReadNoFence (
       LONG const volatile *Source
    )

{

    LONG Value;

    Value = *Source;
    return Value;
}

__forceinline
void
WriteRelease (
       LONG volatile *Destination,
      LONG Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
void
WriteNoFence (
       LONG volatile *Destination,
      LONG Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
LONG64
ReadAcquire64 (
       LONG64 const volatile *Source
    )

{

    LONG64 Value;

    Value = *Source;
    return Value;
}

__forceinline
LONG64
ReadNoFence64 (
       LONG64 const volatile *Source
    )

{

    LONG64 Value;

    Value = *Source;
    return Value;
}

__forceinline
void
WriteRelease64 (
       LONG64 volatile *Destination,
      LONG64 Value
    )

{

    *Destination = Value;
    return;
}

__forceinline
void
WriteNoFence64 (
       LONG64 volatile *Destination,
      LONG64 Value
    )

{

    *Destination = Value;
    return;
}


}
#line 7873 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 7875 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





__forceinline
CHAR
ReadRaw8 (
       CHAR const volatile *Source
    )

{

    CHAR Value;

    Value = *(CHAR *)Source;
    return Value;
}

__forceinline
void
WriteRaw8 (
       CHAR volatile *Destination,
      CHAR Value
    )

{

    *(CHAR *)Destination = Value;
    return;
}

__forceinline
SHORT
ReadRaw16 (
       SHORT const volatile *Source
    )

{

    SHORT Value;

    Value = *(SHORT *)Source;
    return Value;
}

__forceinline
void
WriteRaw16 (
       SHORT volatile *Destination,
      SHORT Value
    )

{

    *(SHORT *)Destination = Value;
    return;
}

__forceinline
LONG
ReadRaw (
       LONG const volatile *Source
    )

{

    LONG Value;

    Value = *(LONG *)Source;
    return Value;
}

__forceinline
void
WriteRaw (
       LONG volatile *Destination,
      LONG Value
    )

{

    *(LONG *)Destination = Value;
    return;
}

__forceinline
LONG64
ReadRaw64 (
       LONG64 const volatile *Source
    )

{

    LONG64 Value;

    Value = *(LONG64 *)Source;
    return Value;
}

__forceinline
void
WriteRaw64 (
       LONG64 volatile *Destination,
      LONG64 Value
    )

{

    *(LONG64 *)Destination = Value;
    return;
}





__forceinline
BYTE 
ReadUCharAcquire (
       BYTE  const volatile *Source
    )

{

    return (BYTE )ReadAcquire8((PCHAR)Source);
}

__forceinline
BYTE 
ReadUCharNoFence (
       BYTE  const volatile *Source
    )

{

    return (BYTE )ReadNoFence8((PCHAR)Source);
}

__forceinline
BYTE 
ReadBooleanAcquire (
       BOOLEAN const volatile *Source
    )

{

    return (BOOLEAN)ReadAcquire8((PCHAR)Source);
}

__forceinline
BYTE 
ReadBooleanNoFence (
       BOOLEAN const volatile *Source
    )

{

    return (BOOLEAN)ReadNoFence8((PCHAR)Source);
}

__forceinline
BYTE 
ReadUCharRaw (
       BYTE  const volatile *Source
    )

{

    return (BYTE )ReadRaw8((PCHAR)Source);
}

__forceinline
void
WriteUCharRelease (
       BYTE  volatile *Destination,
      BYTE  Value
    )

{

    WriteRelease8((PCHAR)Destination, (CHAR)Value);
    return;
}

__forceinline
void
WriteUCharNoFence (
       BYTE  volatile *Destination,
      BYTE  Value
    )

{

    WriteNoFence8((PCHAR)Destination, (CHAR)Value);
    return;
}

__forceinline
void
WriteBooleanRelease (
       BOOLEAN volatile *Destination,
      BOOLEAN Value
    )

{

    WriteRelease8((PCHAR)Destination, (CHAR)Value);
    return;
}

__forceinline
void
WriteBooleanNoFence (
       BOOLEAN volatile *Destination,
      BOOLEAN Value
    )

{

    WriteNoFence8((PCHAR)Destination, (CHAR)Value);
    return;
}

__forceinline
void
WriteUCharRaw (
       BYTE  volatile *Destination,
      BYTE  Value
    )

{

    WriteRaw8((PCHAR)Destination, (CHAR)Value);
    return;
}

__forceinline
WORD  
ReadUShortAcquire (
       WORD   const volatile *Source
    )

{

    return (WORD  )ReadAcquire16((PSHORT)Source);
}

__forceinline
WORD  
ReadUShortNoFence (
       WORD   const volatile *Source
    )

{

    return (WORD  )ReadNoFence16((PSHORT)Source);
}

__forceinline
WORD  
ReadUShortRaw (
       WORD   const volatile *Source
    )

{

    return (WORD  )ReadRaw16((PSHORT)Source);
}

__forceinline
void
WriteUShortRelease (
       WORD   volatile *Destination,
      WORD   Value
    )

{

    WriteRelease16((PSHORT)Destination, (SHORT)Value);
    return;
}

__forceinline
void
WriteUShortNoFence (
       WORD   volatile *Destination,
      WORD   Value
    )

{

    WriteNoFence16((PSHORT)Destination, (SHORT)Value);
    return;
}

__forceinline
void
WriteUShortRaw (
       WORD   volatile *Destination,
      WORD   Value
    )

{

    WriteRaw16((PSHORT)Destination, (SHORT)Value);
    return;
}

__forceinline
DWORD
ReadULongAcquire (
       DWORD const volatile *Source
    )

{

    return (DWORD)ReadAcquire((PLONG)Source);
}

__forceinline
DWORD
ReadULongNoFence (
       DWORD const volatile *Source
    )

{

    return (DWORD)ReadNoFence((PLONG)Source);
}

__forceinline
DWORD
ReadULongRaw (
       DWORD const volatile *Source
    )

{

    return (DWORD)ReadRaw((PLONG)Source);
}

__forceinline
void
WriteULongRelease (
       DWORD volatile *Destination,
      DWORD Value
    )

{

    WriteRelease((PLONG)Destination, (LONG)Value);
    return;
}

__forceinline
void
WriteULongNoFence (
       DWORD volatile *Destination,
      DWORD Value
    )

{

    WriteNoFence((PLONG)Destination, (LONG)Value);
    return;
}

__forceinline
void
WriteULongRaw (
       DWORD volatile *Destination,
      DWORD Value
    )

{

    WriteRaw((PLONG)Destination, (LONG)Value);
    return;
}

__forceinline
DWORD64
ReadULong64Acquire (
       DWORD64 const volatile *Source
    )

{

    return (DWORD64)ReadAcquire64((PLONG64)Source);
}

__forceinline
DWORD64
ReadULong64NoFence (
       DWORD64 const volatile *Source
    )

{

    return (DWORD64)ReadNoFence64((PLONG64)Source);
}

__forceinline
DWORD64
ReadULong64Raw (
       DWORD64 const volatile *Source
    )

{

    return (DWORD64)ReadRaw64((PLONG64)Source);
}

__forceinline
void
WriteULong64Release (
       DWORD64 volatile *Destination,
      DWORD64 Value
    )

{

    WriteRelease64((PLONG64)Destination, (LONG64)Value);
    return;
}

__forceinline
void
WriteULong64NoFence (
       DWORD64 volatile *Destination,
      DWORD64 Value
    )

{

    WriteNoFence64((PLONG64)Destination, (LONG64)Value);
    return;
}

__forceinline
void
WriteULong64Raw (
       DWORD64 volatile *Destination,
      DWORD64 Value
    )

{

    WriteRaw64((PLONG64)Destination, (LONG64)Value);
    return;
}















__forceinline
PVOID
ReadPointerAcquire (
       PVOID const volatile *Source
    )

{

    return (PVOID)ReadAcquire((PLONG)Source);
}

__forceinline
PVOID
ReadPointerNoFence (
       PVOID const volatile *Source
    )

{

    return (PVOID)ReadNoFence((PLONG)Source);
}

__forceinline
PVOID
ReadPointerRaw (
       PVOID const volatile *Source
    )

{

    return (PVOID)ReadRaw((PLONG)Source);
}

__forceinline
void
WritePointerRelease (
       PVOID volatile *Destination,
      PVOID Value
    )

{

    WriteRelease((PLONG)Destination, (LONG)Value);
    return;
}

__forceinline
void
WritePointerNoFence (
       PVOID volatile *Destination,
      PVOID Value
    )

{

    WriteNoFence((PLONG)Destination, (LONG)Value);
    return;
}

__forceinline
void
WritePointerRaw (
       PVOID volatile *Destination,
      PVOID Value
    )

{

    WriteRaw((PLONG)Destination, (LONG)Value);
    return;
}



























































































































#line 8537 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 8539 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


#line 8542 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


























#line 8569 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









typedef struct _WOW64_FLOATING_SAVE_AREA {
    DWORD   ControlWord;
    DWORD   StatusWord;
    DWORD   TagWord;
    DWORD   ErrorOffset;
    DWORD   ErrorSelector;
    DWORD   DataOffset;
    DWORD   DataSelector;
    BYTE    RegisterArea[80];
    DWORD   Cr0NpxState;
} WOW64_FLOATING_SAVE_AREA;

typedef WOW64_FLOATING_SAVE_AREA *PWOW64_FLOATING_SAVE_AREA;

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push,4)


#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 34 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 8593 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











typedef struct _WOW64_CONTEXT {

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DWORD ContextFlags;

    
    
    
    
    

    DWORD   Dr0;
    DWORD   Dr1;
    DWORD   Dr2;
    DWORD   Dr3;
    DWORD   Dr6;
    DWORD   Dr7;

    
    
    
    

    WOW64_FLOATING_SAVE_AREA FloatSave;

    
    
    
    

    DWORD   SegGs;
    DWORD   SegFs;
    DWORD   SegEs;
    DWORD   SegDs;

    
    
    
    

    DWORD   Edi;
    DWORD   Esi;
    DWORD   Ebx;
    DWORD   Edx;
    DWORD   Ecx;
    DWORD   Eax;

    
    
    
    

    DWORD   Ebp;
    DWORD   Eip;
    DWORD   SegCs;              
    DWORD   EFlags;             
    DWORD   Esp;
    DWORD   SegSs;

    
    
    
    
    

    BYTE    ExtendedRegisters[512];

} WOW64_CONTEXT;

typedef WOW64_CONTEXT *PWOW64_CONTEXT;

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 37 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 8693 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


typedef struct _WOW64_LDT_ENTRY {
    WORD    LimitLow;
    WORD    BaseLow;
    union {
        struct {
            BYTE    BaseMid;
            BYTE    Flags1;     
            BYTE    Flags2;     
            BYTE    BaseHi;
        } Bytes;
        struct {
            DWORD   BaseMid : 8;
            DWORD   Type : 5;
            DWORD   Dpl : 2;
            DWORD   Pres : 1;
            DWORD   LimitHi : 4;
            DWORD   Sys : 1;
            DWORD   Reserved_0 : 1;
            DWORD   Default_Big : 1;
            DWORD   Granularity : 1;
            DWORD   BaseHi : 8;
        } Bits;
    } HighWord;
} WOW64_LDT_ENTRY, *PWOW64_LDT_ENTRY;

typedef struct _WOW64_DESCRIPTOR_TABLE_ENTRY {
    DWORD Selector;
    WOW64_LDT_ENTRY Descriptor;
} WOW64_DESCRIPTOR_TABLE_ENTRY, *PWOW64_DESCRIPTOR_TABLE_ENTRY;






















typedef struct _EXCEPTION_RECORD {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    struct _EXCEPTION_RECORD *ExceptionRecord;
    PVOID ExceptionAddress;
    DWORD NumberParameters;
    ULONG_PTR ExceptionInformation[15];
    } EXCEPTION_RECORD;

typedef EXCEPTION_RECORD *PEXCEPTION_RECORD;

typedef struct _EXCEPTION_RECORD32 {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    DWORD ExceptionRecord;
    DWORD ExceptionAddress;
    DWORD NumberParameters;
    DWORD ExceptionInformation[15];
} EXCEPTION_RECORD32, *PEXCEPTION_RECORD32;

typedef struct _EXCEPTION_RECORD64 {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    DWORD64 ExceptionRecord;
    DWORD64 ExceptionAddress;
    DWORD NumberParameters;
    DWORD __unusedAlignment;
    DWORD64 ExceptionInformation[15];
} EXCEPTION_RECORD64, *PEXCEPTION_RECORD64;





typedef struct _EXCEPTION_POINTERS {
    PEXCEPTION_RECORD ExceptionRecord;
    PCONTEXT ContextRecord;
} EXCEPTION_POINTERS, *PEXCEPTION_POINTERS;


















#line 8803 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef PVOID PACCESS_TOKEN;            
typedef PVOID PSECURITY_DESCRIPTOR;     
typedef PVOID PSID;     
typedef PVOID PCLAIMS_BLOB;     








































typedef DWORD ACCESS_MASK;
typedef ACCESS_MASK *PACCESS_MASK;

























































typedef struct _GENERIC_MAPPING {
    ACCESS_MASK GenericRead;
    ACCESS_MASK GenericWrite;
    ACCESS_MASK GenericExecute;
    ACCESS_MASK GenericAll;
} GENERIC_MAPPING;
typedef GENERIC_MAPPING *PGENERIC_MAPPING;












#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push,4)


#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 34 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\pshpack4.h"
#line 8927 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _LUID_AND_ATTRIBUTES {
    LUID Luid;
    DWORD Attributes;
    } LUID_AND_ATTRIBUTES, * PLUID_AND_ATTRIBUTES;
typedef LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[1];
typedef LUID_AND_ATTRIBUTES_ARRAY *PLUID_AND_ATTRIBUTES_ARRAY;

#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"


#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 37 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\shared\\poppack.h"
#line 8936 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


































typedef struct _SID_IDENTIFIER_AUTHORITY {
    BYTE  Value[6];
} SID_IDENTIFIER_AUTHORITY, *PSID_IDENTIFIER_AUTHORITY;
#line 8974 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




typedef struct _SID {
   BYTE  Revision;
   BYTE  SubAuthorityCount;
   SID_IDENTIFIER_AUTHORITY IdentifierAuthority;



   DWORD SubAuthority[1];
#line 8987 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
} SID, *PISID;
#line 8989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





                                                























typedef union _SE_SID {
    SID Sid;
    BYTE  Buffer[(sizeof(SID) - sizeof(DWORD) + ((15) * sizeof(DWORD)))];
} SE_SID, *PSE_SID;

#line 9024 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


typedef enum _SID_NAME_USE {
    SidTypeUser = 1,
    SidTypeGroup,
    SidTypeDomain,
    SidTypeAlias,
    SidTypeWellKnownGroup,
    SidTypeDeletedAccount,
    SidTypeInvalid,
    SidTypeUnknown,
    SidTypeComputer,
    SidTypeLabel,
    SidTypeLogonSession
} SID_NAME_USE, *PSID_NAME_USE;

typedef struct _SID_AND_ATTRIBUTES {



    PSID Sid;
#line 9046 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
    DWORD Attributes;
    } SID_AND_ATTRIBUTES, * PSID_AND_ATTRIBUTES;

typedef SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[1];
typedef SID_AND_ATTRIBUTES_ARRAY *PSID_AND_ATTRIBUTES_ARRAY;


typedef ULONG_PTR SID_HASH_ENTRY, *PSID_HASH_ENTRY;

typedef struct _SID_AND_ATTRIBUTES_HASH {
    DWORD SidCount;
    PSID_AND_ATTRIBUTES SidAttr;
    SID_HASH_ENTRY Hash[32];
} SID_AND_ATTRIBUTES_HASH, *PSID_AND_ATTRIBUTES_HASH;














































































































































































































































































































































































































typedef enum {

    WinNullSid                                  = 0,
    WinWorldSid                                 = 1,
    WinLocalSid                                 = 2,
    WinCreatorOwnerSid                          = 3,
    WinCreatorGroupSid                          = 4,
    WinCreatorOwnerServerSid                    = 5,
    WinCreatorGroupServerSid                    = 6,
    WinNtAuthoritySid                           = 7,
    WinDialupSid                                = 8,
    WinNetworkSid                               = 9,
    WinBatchSid                                 = 10,
    WinInteractiveSid                           = 11,
    WinServiceSid                               = 12,
    WinAnonymousSid                             = 13,
    WinProxySid                                 = 14,
    WinEnterpriseControllersSid                 = 15,
    WinSelfSid                                  = 16,
    WinAuthenticatedUserSid                     = 17,
    WinRestrictedCodeSid                        = 18,
    WinTerminalServerSid                        = 19,
    WinRemoteLogonIdSid                         = 20,
    WinLogonIdsSid                              = 21,
    WinLocalSystemSid                           = 22,
    WinLocalServiceSid                          = 23,
    WinNetworkServiceSid                        = 24,
    WinBuiltinDomainSid                         = 25,
    WinBuiltinAdministratorsSid                 = 26,
    WinBuiltinUsersSid                          = 27,
    WinBuiltinGuestsSid                         = 28,
    WinBuiltinPowerUsersSid                     = 29,
    WinBuiltinAccountOperatorsSid               = 30,
    WinBuiltinSystemOperatorsSid                = 31,
    WinBuiltinPrintOperatorsSid                 = 32,
    WinBuiltinBackupOperatorsSid                = 33,
    WinBuiltinReplicatorSid                     = 34,
    WinBuiltinPreWindows2000CompatibleAccessSid = 35,
    WinBuiltinRemoteDesktopUsersSid             = 36,
    WinBuiltinNetworkConfigurationOperatorsSid  = 37,
    WinAccountAdministratorSid                  = 38,
    WinAccountGuestSid                          = 39,
    WinAccountKrbtgtSid                         = 40,
    WinAccountDomainAdminsSid                   = 41,
    WinAccountDomainUsersSid                    = 42,
    WinAccountDomainGuestsSid                   = 43,
    WinAccountComputersSid                      = 44,
    WinAccountControllersSid                    = 45,
    WinAccountCertAdminsSid                     = 46,
    WinAccountSchemaAdminsSid                   = 47,
    WinAccountEnterpriseAdminsSid               = 48,
    WinAccountPolicyAdminsSid                   = 49,
    WinAccountRasAndIasServersSid               = 50,
    WinNTLMAuthenticationSid                    = 51,
    WinDigestAuthenticationSid                  = 52,
    WinSChannelAuthenticationSid                = 53,
    WinThisOrganizationSid                      = 54,
    WinOtherOrganizationSid                     = 55,
    WinBuiltinIncomingForestTrustBuildersSid    = 56,
    WinBuiltinPerfMonitoringUsersSid            = 57,
    WinBuiltinPerfLoggingUsersSid               = 58,
    WinBuiltinAuthorizationAccessSid            = 59,
    WinBuiltinTerminalServerLicenseServersSid   = 60,
    WinBuiltinDCOMUsersSid                      = 61,
    WinBuiltinIUsersSid                         = 62,
    WinIUserSid                                 = 63,
    WinBuiltinCryptoOperatorsSid                = 64,
    WinUntrustedLabelSid                        = 65,
    WinLowLabelSid                              = 66,
    WinMediumLabelSid                           = 67,
    WinHighLabelSid                             = 68,
    WinSystemLabelSid                           = 69,
    WinWriteRestrictedCodeSid                   = 70,
    WinCreatorOwnerRightsSid                    = 71,
    WinCacheablePrincipalsGroupSid              = 72,
    WinNonCacheablePrincipalsGroupSid           = 73,
    WinEnterpriseReadonlyControllersSid         = 74,
    WinAccountReadonlyControllersSid            = 75,
    WinBuiltinEventLogReadersGroup              = 76,
    WinNewEnterpriseReadonlyControllersSid      = 77,
    WinBuiltinCertSvcDComAccessGroup            = 78,
    WinMediumPlusLabelSid                       = 79,
    WinLocalLogonSid                            = 80,
    WinConsoleLogonSid                          = 81,
    WinThisOrganizationCertificateSid           = 82,
    WinApplicationPackageAuthoritySid           = 83,
    WinBuiltinAnyPackageSid                     = 84,
    WinCapabilityInternetClientSid              = 85,
    WinCapabilityInternetClientServerSid        = 86,
    WinCapabilityPrivateNetworkClientServerSid  = 87,
    WinCapabilityPicturesLibrarySid             = 88,
    WinCapabilityVideosLibrarySid               = 89,
    WinCapabilityMusicLibrarySid                = 90,
    WinCapabilityDocumentsLibrarySid            = 91,
    WinCapabilitySharedUserCertificatesSid      = 92,
    WinCapabilityEnterpriseAuthenticationSid    = 93,
    WinCapabilityRemovableStorageSid            = 94,
    WinBuiltinRDSRemoteAccessServersSid         = 95,
    WinBuiltinRDSEndpointServersSid             = 96,
    WinBuiltinRDSManagementServersSid           = 97,
    WinUserModeDriversSid                       = 98,
    WinBuiltinHyperVAdminsSid                   = 99,
    WinAccountCloneableControllersSid           = 100,
    WinBuiltinAccessControlAssistanceOperatorsSid = 101,
    WinBuiltinRemoteManagementUsersSid          = 102,
    WinAuthenticationAuthorityAssertedSid       = 103,
    WinAuthenticationServiceAssertedSid         = 104,
    WinLocalAccountSid                          = 105,
    WinLocalAccountAndAdministratorSid          = 106,
    WinAccountProtectedUsersSid                 = 107,
    WinCapabilityAppointmentsSid                = 108,
    WinCapabilityContactsSid                    = 109,
    WinAccountDefaultSystemManagedSid           = 110,
    WinBuiltinDefaultSystemManagedGroupSid      = 111,
    WinBuiltinStorageReplicaAdminsSid           = 112,
    WinAccountKeyAdminsSid                      = 113,
    WinAccountEnterpriseKeyAdminsSid            = 114,
    WinAuthenticationKeyTrustSid                = 115,
    WinAuthenticationKeyPropertyMFASid          = 116,
    WinAuthenticationKeyPropertyAttestationSid  = 117,
    WinAuthenticationFreshKeyAuthSid            = 118,
} WELL_KNOWN_SID_TYPE;
































































































typedef struct _ACL {
    BYTE  AclRevision;
    BYTE  Sbz1;
    WORD   AclSize;
    WORD   AceCount;
    WORD   Sbz2;
} ACL;
typedef ACL *PACL;






















typedef struct _ACE_HEADER {
    BYTE  AceType;
    BYTE  AceFlags;
    WORD   AceSize;
} ACE_HEADER;
typedef ACE_HEADER *PACE_HEADER;



























































































































typedef struct _ACCESS_ALLOWED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_ALLOWED_ACE;

typedef ACCESS_ALLOWED_ACE *PACCESS_ALLOWED_ACE;

typedef struct _ACCESS_DENIED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_DENIED_ACE;
typedef ACCESS_DENIED_ACE *PACCESS_DENIED_ACE;

typedef struct _SYSTEM_AUDIT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_AUDIT_ACE;
typedef SYSTEM_AUDIT_ACE *PSYSTEM_AUDIT_ACE;

typedef struct _SYSTEM_ALARM_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_ALARM_ACE;
typedef SYSTEM_ALARM_ACE *PSYSTEM_ALARM_ACE;

typedef struct _SYSTEM_RESOURCE_ATTRIBUTE_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_RESOURCE_ATTRIBUTE_ACE, *PSYSTEM_RESOURCE_ATTRIBUTE_ACE;

typedef struct _SYSTEM_SCOPED_POLICY_ID_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_SCOPED_POLICY_ID_ACE, *PSYSTEM_SCOPED_POLICY_ID_ACE;

typedef struct _SYSTEM_MANDATORY_LABEL_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_MANDATORY_LABEL_ACE, *PSYSTEM_MANDATORY_LABEL_ACE;

typedef struct _SYSTEM_PROCESS_TRUST_LABEL_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_PROCESS_TRUST_LABEL_ACE, *PSYSTEM_PROCESS_TRUST_LABEL_ACE;

typedef struct _SYSTEM_ACCESS_FILTER_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_ACCESS_FILTER_ACE, *PSYSTEM_ACCESS_FILTER_ACE;

















typedef struct _ACCESS_ALLOWED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_ALLOWED_OBJECT_ACE, *PACCESS_ALLOWED_OBJECT_ACE;

typedef struct _ACCESS_DENIED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_DENIED_OBJECT_ACE, *PACCESS_DENIED_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_AUDIT_OBJECT_ACE, *PSYSTEM_AUDIT_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_ALARM_OBJECT_ACE, *PSYSTEM_ALARM_OBJECT_ACE;






typedef struct _ACCESS_ALLOWED_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} ACCESS_ALLOWED_CALLBACK_ACE, *PACCESS_ALLOWED_CALLBACK_ACE;

typedef struct _ACCESS_DENIED_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} ACCESS_DENIED_CALLBACK_ACE, *PACCESS_DENIED_CALLBACK_ACE;

typedef struct _SYSTEM_AUDIT_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_AUDIT_CALLBACK_ACE, *PSYSTEM_AUDIT_CALLBACK_ACE;

typedef struct _SYSTEM_ALARM_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_ALARM_CALLBACK_ACE, *PSYSTEM_ALARM_CALLBACK_ACE;

typedef struct _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} ACCESS_ALLOWED_CALLBACK_OBJECT_ACE, *PACCESS_ALLOWED_CALLBACK_OBJECT_ACE;

typedef struct _ACCESS_DENIED_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} ACCESS_DENIED_CALLBACK_OBJECT_ACE, *PACCESS_DENIED_CALLBACK_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} SYSTEM_AUDIT_CALLBACK_OBJECT_ACE, *PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} SYSTEM_ALARM_CALLBACK_OBJECT_ACE, *PSYSTEM_ALARM_CALLBACK_OBJECT_ACE;















typedef enum _ACL_INFORMATION_CLASS {
    AclRevisionInformation = 1,
    AclSizeInformation
} ACL_INFORMATION_CLASS;






typedef struct _ACL_REVISION_INFORMATION {
    DWORD AclRevision;
} ACL_REVISION_INFORMATION;
typedef ACL_REVISION_INFORMATION *PACL_REVISION_INFORMATION;





typedef struct _ACL_SIZE_INFORMATION {
    DWORD AceCount;
    DWORD AclBytesInUse;
    DWORD AclBytesFree;
} ACL_SIZE_INFORMATION;
typedef ACL_SIZE_INFORMATION *PACL_SIZE_INFORMATION;


























typedef WORD   SECURITY_DESCRIPTOR_CONTROL, *PSECURITY_DESCRIPTOR_CONTROL;

























































































typedef struct _SECURITY_DESCRIPTOR_RELATIVE {
    BYTE  Revision;
    BYTE  Sbz1;
    SECURITY_DESCRIPTOR_CONTROL Control;
    DWORD Owner;
    DWORD Group;
    DWORD Sacl;
    DWORD Dacl;
    } SECURITY_DESCRIPTOR_RELATIVE, *PISECURITY_DESCRIPTOR_RELATIVE;

typedef struct _SECURITY_DESCRIPTOR {
   BYTE  Revision;
   BYTE  Sbz1;
   SECURITY_DESCRIPTOR_CONTROL Control;
   PSID Owner;
   PSID Group;
   PACL Sacl;
   PACL Dacl;

   } SECURITY_DESCRIPTOR, *PISECURITY_DESCRIPTOR;

   
typedef struct _SECURITY_OBJECT_AI_PARAMS {
    DWORD Size;             
    DWORD ConstraintMask;
} SECURITY_OBJECT_AI_PARAMS, *PSECURITY_OBJECT_AI_PARAMS;



















































typedef struct _OBJECT_TYPE_LIST {
    WORD   Level;
    WORD   Sbz;
    GUID *ObjectType;
} OBJECT_TYPE_LIST, *POBJECT_TYPE_LIST;















typedef enum _AUDIT_EVENT_TYPE {
    AuditEventObjectAccess,
    AuditEventDirectoryServiceAccess
} AUDIT_EVENT_TYPE, *PAUDIT_EVENT_TYPE;


















































typedef struct _PRIVILEGE_SET {
    DWORD PrivilegeCount;
    DWORD Control;
    LUID_AND_ATTRIBUTES Privilege[1];
    } PRIVILEGE_SET, * PPRIVILEGE_SET;
















typedef enum _ACCESS_REASON_TYPE{

    AccessReasonNone                    = 0x00000000,   

    
    
    
    
    
    AccessReasonAllowedAce                  = 0x00010000,   
    AccessReasonDeniedAce                   = 0x00020000,   

    AccessReasonAllowedParentAce            = 0x00030000,   
    AccessReasonDeniedParentAce             = 0x00040000,   

    AccessReasonNotGrantedByCape            = 0x00050000,   
    AccessReasonNotGrantedByParentCape      = 0x00060000,   

    AccessReasonNotGrantedToAppContainer    = 0x00070000,   

    AccessReasonMissingPrivilege            = 0x00100000,
    AccessReasonFromPrivilege               = 0x00200000,


    AccessReasonIntegrityLevel              = 0x00300000,

    AccessReasonOwnership                   = 0x00400000,

    AccessReasonNullDacl                    = 0x00500000,
    AccessReasonEmptyDacl                   = 0x00600000,

    AccessReasonNoSD                        = 0x00700000,
    AccessReasonNoGrant                     = 0x00800000,   

    AccessReasonTrustLabel                  = 0x00900000,   

    AccessReasonFilterAce                   = 0x00a00000    
}
ACCESS_REASON_TYPE;

 












typedef DWORD ACCESS_REASON;

typedef struct _ACCESS_REASONS{
        ACCESS_REASON Data[32];
} ACCESS_REASONS, *PACCESS_REASONS;


























typedef struct _SE_SECURITY_DESCRIPTOR
{
    DWORD Size;
    DWORD Flags;
    PSECURITY_DESCRIPTOR SecurityDescriptor;
} SE_SECURITY_DESCRIPTOR, *PSE_SECURITY_DESCRIPTOR;

typedef struct _SE_ACCESS_REQUEST
{
    DWORD Size;
    PSE_SECURITY_DESCRIPTOR SeSecurityDescriptor;
    ACCESS_MASK DesiredAccess;
    ACCESS_MASK PreviouslyGrantedAccess;
    PSID PrincipalSelfSid;      
    PGENERIC_MAPPING GenericMapping;
    DWORD ObjectTypeListCount;
    POBJECT_TYPE_LIST ObjectTypeList;
} SE_ACCESS_REQUEST, *PSE_ACCESS_REQUEST;


typedef struct _SE_ACCESS_REPLY
{
    DWORD Size;
    DWORD ResultListCount;  
    PACCESS_MASK GrantedAccess;
    PDWORD    AccessStatus;
    PACCESS_REASONS AccessReason;
    PPRIVILEGE_SET* Privileges;
} SE_ACCESS_REPLY, *PSE_ACCESS_REPLY;












































































typedef enum _SECURITY_IMPERSONATION_LEVEL {
    SecurityAnonymous,
    SecurityIdentification,
    SecurityImpersonation,
    SecurityDelegation
    } SECURITY_IMPERSONATION_LEVEL, * PSECURITY_IMPERSONATION_LEVEL;













































#line 10589 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






















#line 10612 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







typedef enum _TOKEN_TYPE {
    TokenPrimary = 1,
    TokenImpersonation
    } TOKEN_TYPE;
typedef TOKEN_TYPE *PTOKEN_TYPE;







typedef enum _TOKEN_ELEVATION_TYPE {
    TokenElevationTypeDefault = 1,
    TokenElevationTypeFull,
    TokenElevationTypeLimited,
} TOKEN_ELEVATION_TYPE, *PTOKEN_ELEVATION_TYPE;






typedef enum _TOKEN_INFORMATION_CLASS {
    TokenUser = 1,
    TokenGroups,
    TokenPrivileges,
    TokenOwner,
    TokenPrimaryGroup,
    TokenDefaultDacl,
    TokenSource,
    TokenType,
    TokenImpersonationLevel,
    TokenStatistics,
    TokenRestrictedSids,
    TokenSessionId,
    TokenGroupsAndPrivileges,
    TokenSessionReference,
    TokenSandBoxInert,
    TokenAuditPolicy,
    TokenOrigin,
    TokenElevationType,
    TokenLinkedToken,
    TokenElevation,
    TokenHasRestrictions,
    TokenAccessInformation,
    TokenVirtualizationAllowed,
    TokenVirtualizationEnabled,
    TokenIntegrityLevel,
    TokenUIAccess,
    TokenMandatoryPolicy,
    TokenLogonSid,
    TokenIsAppContainer,
    TokenCapabilities,
    TokenAppContainerSid,
    TokenAppContainerNumber,
    TokenUserClaimAttributes,
    TokenDeviceClaimAttributes,
    TokenRestrictedUserClaimAttributes,
    TokenRestrictedDeviceClaimAttributes,
    TokenDeviceGroups,
    TokenRestrictedDeviceGroups,
    TokenSecurityAttributes,
    TokenIsRestricted,
    TokenProcessTrustLevel,
    TokenPrivateNameSpace,
    TokenSingletonAttributes,
    TokenBnoIsolation,
    TokenChildProcessFlags,
    MaxTokenInfoClass  
} TOKEN_INFORMATION_CLASS, *PTOKEN_INFORMATION_CLASS;





typedef struct _TOKEN_USER {
    SID_AND_ATTRIBUTES User;
} TOKEN_USER, *PTOKEN_USER;



typedef struct _SE_TOKEN_USER {
    union {
        TOKEN_USER TokenUser;
        SID_AND_ATTRIBUTES User;
    } ;

    union {
        SID Sid;
        BYTE  Buffer[(sizeof(SID) - sizeof(DWORD) + ((15) * sizeof(DWORD)))];
    } ;

} SE_TOKEN_USER , PSE_TOKEN_USER;



#line 10717 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


typedef struct _TOKEN_GROUPS {
    DWORD GroupCount;



    SID_AND_ATTRIBUTES Groups[1];
#line 10726 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
} TOKEN_GROUPS, *PTOKEN_GROUPS;

typedef struct _TOKEN_PRIVILEGES {
    DWORD PrivilegeCount;
    LUID_AND_ATTRIBUTES Privileges[1];
} TOKEN_PRIVILEGES, *PTOKEN_PRIVILEGES;


typedef struct _TOKEN_OWNER {
    PSID Owner;
} TOKEN_OWNER, *PTOKEN_OWNER;



#line 10741 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _TOKEN_PRIMARY_GROUP {
    PSID PrimaryGroup;
} TOKEN_PRIMARY_GROUP, *PTOKEN_PRIMARY_GROUP;


typedef struct _TOKEN_DEFAULT_DACL {
    PACL DefaultDacl;
} TOKEN_DEFAULT_DACL, *PTOKEN_DEFAULT_DACL;

typedef struct _TOKEN_USER_CLAIMS {
    PCLAIMS_BLOB UserClaims;
} TOKEN_USER_CLAIMS, *PTOKEN_USER_CLAIMS;

typedef struct _TOKEN_DEVICE_CLAIMS {
    PCLAIMS_BLOB DeviceClaims;
} TOKEN_DEVICE_CLAIMS, *PTOKEN_DEVICE_CLAIMS;

typedef struct _TOKEN_GROUPS_AND_PRIVILEGES {
    DWORD SidCount;
    DWORD SidLength;
    PSID_AND_ATTRIBUTES Sids;
    DWORD RestrictedSidCount;
    DWORD RestrictedSidLength;
    PSID_AND_ATTRIBUTES RestrictedSids;
    DWORD PrivilegeCount;
    DWORD PrivilegeLength;
    PLUID_AND_ATTRIBUTES Privileges;
    LUID AuthenticationId;
} TOKEN_GROUPS_AND_PRIVILEGES, *PTOKEN_GROUPS_AND_PRIVILEGES;

typedef struct _TOKEN_LINKED_TOKEN {
    HANDLE LinkedToken;
} TOKEN_LINKED_TOKEN, *PTOKEN_LINKED_TOKEN;

typedef struct _TOKEN_ELEVATION {
    DWORD TokenIsElevated;
} TOKEN_ELEVATION, *PTOKEN_ELEVATION;

typedef struct _TOKEN_MANDATORY_LABEL {
    SID_AND_ATTRIBUTES Label;
} TOKEN_MANDATORY_LABEL, *PTOKEN_MANDATORY_LABEL;










#line 10794 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _TOKEN_MANDATORY_POLICY {
    DWORD Policy;
} TOKEN_MANDATORY_POLICY, *PTOKEN_MANDATORY_POLICY;

typedef PVOID PSECURITY_ATTRIBUTES_OPAQUE;

typedef struct _TOKEN_ACCESS_INFORMATION {
    PSID_AND_ATTRIBUTES_HASH SidHash;
    PSID_AND_ATTRIBUTES_HASH RestrictedSidHash;
    PTOKEN_PRIVILEGES Privileges;
    LUID AuthenticationId;
    TOKEN_TYPE TokenType;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    TOKEN_MANDATORY_POLICY MandatoryPolicy;
    DWORD Flags;
    DWORD AppContainerNumber;
    PSID PackageSid;
    PSID_AND_ATTRIBUTES_HASH CapabilitiesHash;
    PSID TrustLevelSid;
    PSECURITY_ATTRIBUTES_OPAQUE SecurityAttributes;
} TOKEN_ACCESS_INFORMATION, *PTOKEN_ACCESS_INFORMATION;







typedef struct _TOKEN_AUDIT_POLICY {
    BYTE  PerUserPolicy[(((59)) >> 1) + 1];
} TOKEN_AUDIT_POLICY, *PTOKEN_AUDIT_POLICY;



typedef struct _TOKEN_SOURCE {
    CHAR SourceName[8];
    LUID SourceIdentifier;
} TOKEN_SOURCE, *PTOKEN_SOURCE;


typedef struct _TOKEN_STATISTICS {
    LUID TokenId;
    LUID AuthenticationId;
    LARGE_INTEGER ExpirationTime;
    TOKEN_TYPE TokenType;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    DWORD DynamicCharged;
    DWORD DynamicAvailable;
    DWORD GroupCount;
    DWORD PrivilegeCount;
    LUID ModifiedId;
} TOKEN_STATISTICS, *PTOKEN_STATISTICS;



typedef struct _TOKEN_CONTROL {
    LUID TokenId;
    LUID AuthenticationId;
    LUID ModifiedId;
    TOKEN_SOURCE TokenSource;
} TOKEN_CONTROL, *PTOKEN_CONTROL;

typedef struct _TOKEN_ORIGIN {
    LUID OriginatingLogonSession ;
} TOKEN_ORIGIN, * PTOKEN_ORIGIN ;


typedef enum _MANDATORY_LEVEL {
    MandatoryLevelUntrusted = 0,
    MandatoryLevelLow,
    MandatoryLevelMedium,
    MandatoryLevelHigh,
    MandatoryLevelSystem,
    MandatoryLevelSecureProcess,
    MandatoryLevelCount
} MANDATORY_LEVEL, *PMANDATORY_LEVEL;

typedef struct _TOKEN_APPCONTAINER_INFORMATION {
    PSID TokenAppContainer;
} TOKEN_APPCONTAINER_INFORMATION, *PTOKEN_APPCONTAINER_INFORMATION;



#line 10879 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _TOKEN_SID_INFORMATION {
    PSID Sid;
} TOKEN_SID_INFORMATION, *PTOKEN_SID_INFORMATION;

typedef struct _TOKEN_BNO_ISOLATION_INFORMATION {
    PWSTR       IsolationPrefix;
    BOOLEAN     IsolationEnabled;
} TOKEN_BNO_ISOLATION_INFORMATION, *PTOKEN_BNO_ISOLATION_INFORMATION;






























typedef struct _CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE {
    DWORD64             Version;
    PWSTR               Name;
} CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE, *PCLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE;








typedef struct _CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE {
    PVOID   pValue;         
    DWORD   ValueLength;    
} CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE,
    *PCLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE;



































































typedef struct _CLAIM_SECURITY_ATTRIBUTE_V1 {

    
    
    
    

    PWSTR   Name; 

    
    
    

    WORD    ValueType;

    
    
    
    

    WORD    Reserved;

    
    
    

    DWORD   Flags;

    
    
    

    DWORD   ValueCount;

    
    
    

    union {
        PLONG64                                         pInt64;
        PDWORD64                                        pUint64;
        PWSTR                                           *ppString;
        PCLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE            pFqbn;
        PCLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE    pOctetString;
    } Values;
} CLAIM_SECURITY_ATTRIBUTE_V1, *PCLAIM_SECURITY_ATTRIBUTE_V1;






typedef struct _CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1 {

    
    
    
    

    DWORD   Name;

    
    
    

    WORD    ValueType;

    
    
    
    

    WORD    Reserved;

    
    
    

    DWORD   Flags;

    
    
    

    DWORD   ValueCount;

    
    
    

    union {
        DWORD pInt64[1];
        DWORD pUint64[1];
        DWORD ppString[1];
        DWORD pFqbn[1];
        DWORD pOctetString[1];
    } Values;
} CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1, *PCLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1;





















typedef struct _CLAIM_SECURITY_ATTRIBUTES_INFORMATION {

    
    
    

    WORD    Version;

    
    
    

    WORD    Reserved;

    DWORD   AttributeCount;
    union {
        PCLAIM_SECURITY_ATTRIBUTE_V1    pAttributeV1;
    } Attribute;
} CLAIM_SECURITY_ATTRIBUTES_INFORMATION, *PCLAIM_SECURITY_ATTRIBUTES_INFORMATION;








typedef BOOLEAN SECURITY_CONTEXT_TRACKING_MODE,
                    * PSECURITY_CONTEXT_TRACKING_MODE;







typedef struct _SECURITY_QUALITY_OF_SERVICE {
    DWORD Length;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
    BOOLEAN EffectiveOnly;
    } SECURITY_QUALITY_OF_SERVICE, * PSECURITY_QUALITY_OF_SERVICE;






typedef struct _SE_IMPERSONATION_STATE {
    PACCESS_TOKEN Token;
    BOOLEAN CopyOnOpen;
    BOOLEAN EffectiveOnly;
    SECURITY_IMPERSONATION_LEVEL Level;
} SE_IMPERSONATION_STATE, *PSE_IMPERSONATION_STATE;






typedef DWORD SECURITY_INFORMATION, *PSECURITY_INFORMATION;






















typedef BYTE  SE_SIGNING_LEVEL, *PSE_SIGNING_LEVEL;























typedef enum _SE_IMAGE_SIGNATURE_TYPE
{
    SeImageSignatureNone = 0,
    SeImageSignatureEmbedded,
    SeImageSignatureCache,
    SeImageSignatureCatalogCached,
    SeImageSignatureCatalogNotCached,
    SeImageSignatureCatalogHint,
    SeImageSignaturePackageCatalog,
} SE_IMAGE_SIGNATURE_TYPE, *PSE_IMAGE_SIGNATURE_TYPE;






typedef enum _SE_LEARNING_MODE_DATA_TYPE {
    SeLearningModeInvalidType = 0,
    SeLearningModeSettings,
    SeLearningModeMax
} SE_LEARNING_MODE_DATA_TYPE;



typedef struct _SECURITY_CAPABILITIES {




    PSID AppContainerSid;
    PSID_AND_ATTRIBUTES Capabilities;
#line 11260 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
    DWORD CapabilityCount;
    DWORD Reserved;
} SECURITY_CAPABILITIES, *PSECURITY_CAPABILITIES, *LPSECURITY_CAPABILITIES;






















#line 11286 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"




















#line 11307 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











typedef struct _JOB_SET_ARRAY {
    HANDLE JobHandle;   
    DWORD MemberLevel;  
    DWORD Flags;        
} JOB_SET_ARRAY, *PJOB_SET_ARRAY;




typedef struct _EXCEPTION_REGISTRATION_RECORD {
    struct _EXCEPTION_REGISTRATION_RECORD *Next;
    PEXCEPTION_ROUTINE Handler;
} EXCEPTION_REGISTRATION_RECORD;

typedef EXCEPTION_REGISTRATION_RECORD *PEXCEPTION_REGISTRATION_RECORD;

typedef struct _NT_TIB {
    struct _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;

    union {
        PVOID FiberData;
        DWORD Version;
    };


#line 11347 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
    PVOID ArbitraryUserPointer;
    struct _NT_TIB *Self;
} NT_TIB;
typedef NT_TIB *PNT_TIB;




typedef struct _NT_TIB32 {
    DWORD ExceptionList;
    DWORD StackBase;
    DWORD StackLimit;
    DWORD SubSystemTib;


    union {
        DWORD FiberData;
        DWORD Version;
    };


#line 11369 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

    DWORD ArbitraryUserPointer;
    DWORD Self;
} NT_TIB32, *PNT_TIB32;

typedef struct _NT_TIB64 {
    DWORD64 ExceptionList;
    DWORD64 StackBase;
    DWORD64 StackLimit;
    DWORD64 SubSystemTib;


    union {
        DWORD64 FiberData;
        DWORD Version;
    };



#line 11389 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

    DWORD64 ArbitraryUserPointer;
    DWORD64 Self;
} NT_TIB64, *PNT_TIB64;










typedef struct _UMS_CREATE_THREAD_ATTRIBUTES {  
    DWORD UmsVersion;   
        PVOID UmsContext;   
        PVOID UmsCompletionList;   
} UMS_CREATE_THREAD_ATTRIBUTES, *PUMS_CREATE_THREAD_ATTRIBUTES; 

typedef struct _WOW64_ARCHITECTURE_INFORMATION {
    DWORD Machine : 16;
    DWORD KernelMode : 1;
    DWORD UserMode : 1;
    DWORD Native : 1;
    DWORD Process : 1;
    DWORD ReservedZero0 : 12;
} WOW64_ARCHITECTURE_INFORMATION;














typedef struct _QUOTA_LIMITS {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    SIZE_T PagefileLimit;
    LARGE_INTEGER TimeLimit;
} QUOTA_LIMITS, *PQUOTA_LIMITS;







typedef union _RATE_QUOTA_LIMIT {
    DWORD RateData;
    struct {
        DWORD RatePercent : 7;
        DWORD Reserved0   : 25;
    } ;
} RATE_QUOTA_LIMIT, *PRATE_QUOTA_LIMIT;

typedef struct _QUOTA_LIMITS_EX {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    SIZE_T PagefileLimit;               
    LARGE_INTEGER TimeLimit;
    SIZE_T WorkingSetLimit;             
    SIZE_T Reserved2;
    SIZE_T Reserved3;
    SIZE_T Reserved4;
    DWORD  Flags;
    RATE_QUOTA_LIMIT CpuRateLimit;
} QUOTA_LIMITS_EX, *PQUOTA_LIMITS_EX;

typedef struct _IO_COUNTERS {
    ULONGLONG  ReadOperationCount;
    ULONGLONG  WriteOperationCount;
    ULONGLONG  OtherOperationCount;
    ULONGLONG ReadTransferCount;
    ULONGLONG WriteTransferCount;
    ULONGLONG OtherTransferCount;
} IO_COUNTERS;
typedef IO_COUNTERS *PIO_COUNTERS;




typedef enum _HARDWARE_COUNTER_TYPE {
    PMCCounter,
    MaxHardwareCounterType
} HARDWARE_COUNTER_TYPE, *PHARDWARE_COUNTER_TYPE;
typedef enum _PROCESS_MITIGATION_POLICY {
    ProcessDEPPolicy,
    ProcessASLRPolicy,
    ProcessDynamicCodePolicy,
    ProcessStrictHandleCheckPolicy,
    ProcessSystemCallDisablePolicy,
    ProcessMitigationOptionsMask,
    ProcessExtensionPointDisablePolicy,
    ProcessControlFlowGuardPolicy,
    ProcessSignaturePolicy,
    ProcessFontDisablePolicy,
    ProcessImageLoadPolicy,
    ProcessSystemCallFilterPolicy,
    ProcessPayloadRestrictionPolicy,
    ProcessChildProcessPolicy,
    MaxProcessMitigationPolicy
} PROCESS_MITIGATION_POLICY, *PPROCESS_MITIGATION_POLICY;






typedef struct _PROCESS_MITIGATION_ASLR_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD EnableBottomUpRandomization : 1;
            DWORD EnableForceRelocateImages : 1;
            DWORD EnableHighEntropy : 1;
            DWORD DisallowStrippedImages : 1;
            DWORD ReservedFlags : 28;
        } ;
    } ;
} PROCESS_MITIGATION_ASLR_POLICY, *PPROCESS_MITIGATION_ASLR_POLICY;

typedef struct _PROCESS_MITIGATION_DEP_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD Enable : 1;
            DWORD DisableAtlThunkEmulation : 1;
            DWORD ReservedFlags : 30;
        } ;
    } ;
    BOOLEAN Permanent;
} PROCESS_MITIGATION_DEP_POLICY, *PPROCESS_MITIGATION_DEP_POLICY;

typedef struct _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD RaiseExceptionOnInvalidHandleReference : 1;
            DWORD HandleExceptionsPermanentlyEnabled : 1;
            DWORD ReservedFlags : 30;
        } ;
    } ;
} PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY, *PPROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY;

typedef struct _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD DisallowWin32kSystemCalls : 1;
            DWORD AuditDisallowWin32kSystemCalls : 1;
            DWORD ReservedFlags : 30;
        } ;
    } ;
} PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY, *PPROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY;

typedef struct _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD DisableExtensionPoints : 1;
            DWORD ReservedFlags : 31;
        } ;
    } ;
} PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY, *PPROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY;

typedef struct _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD ProhibitDynamicCode : 1;
            DWORD AllowThreadOptOut : 1;
            DWORD AllowRemoteDowngrade : 1;
            DWORD AuditProhibitDynamicCode : 1;
            DWORD ReservedFlags : 28;
        } ;
    } ;
} PROCESS_MITIGATION_DYNAMIC_CODE_POLICY, *PPROCESS_MITIGATION_DYNAMIC_CODE_POLICY;

typedef struct _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD EnableControlFlowGuard : 1;
            DWORD EnableExportSuppression : 1;
            DWORD StrictMode : 1;
            DWORD ReservedFlags : 29;
        } ;
    } ;
} PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY, *PPROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY;

typedef struct _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD MicrosoftSignedOnly : 1;
            DWORD StoreSignedOnly : 1;
            DWORD MitigationOptIn : 1;
            DWORD AuditMicrosoftSignedOnly : 1;
            DWORD AuditStoreSignedOnly : 1;
            DWORD ReservedFlags : 27;
        } ;
    } ;
} PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY, *PPROCESS_MITIGATION_BINARY_SIGNATURE_POLICY;

typedef struct _PROCESS_MITIGATION_FONT_DISABLE_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD DisableNonSystemFonts     : 1;
            DWORD AuditNonSystemFontLoading : 1;
            DWORD ReservedFlags             : 30;
        } ;
    } ;
} PROCESS_MITIGATION_FONT_DISABLE_POLICY, *PPROCESS_MITIGATION_FONT_DISABLE_POLICY;

typedef struct _PROCESS_MITIGATION_IMAGE_LOAD_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD NoRemoteImages : 1;
            DWORD NoLowMandatoryLabelImages : 1;
            DWORD PreferSystem32Images : 1;
            DWORD AuditNoRemoteImages : 1;
            DWORD AuditNoLowMandatoryLabelImages : 1;
            DWORD ReservedFlags : 27;
        } ;
    } ;
} PROCESS_MITIGATION_IMAGE_LOAD_POLICY, *PPROCESS_MITIGATION_IMAGE_LOAD_POLICY;

typedef struct _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD FilterId: 4;
            DWORD ReservedFlags : 28;
        } ;
    } ;
} PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY, *PPROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY;

typedef struct _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD EnableExportAddressFilter     : 1;
            DWORD AuditExportAddressFilter      : 1;

            DWORD EnableExportAddressFilterPlus : 1;
            DWORD AuditExportAddressFilterPlus  : 1;

            DWORD EnableImportAddressFilter     : 1;
            DWORD AuditImportAddressFilter      : 1;

            DWORD EnableRopStackPivot           : 1;
            DWORD AuditRopStackPivot            : 1;

            DWORD EnableRopCallerCheck          : 1;
            DWORD AuditRopCallerCheck           : 1;

            DWORD EnableRopSimExec              : 1;
            DWORD AuditRopSimExec               : 1;

            DWORD ReservedFlags                 : 20;
        } ;
    } ;
} PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY, *PPROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY;

typedef struct _PROCESS_MITIGATION_CHILD_PROCESS_POLICY {
    union {
        DWORD Flags;
        struct {
            DWORD NoChildProcessCreation : 1;
            DWORD AuditNoChildProcessCreation : 1;
            DWORD AllowSecureProcessCreation : 1;
            DWORD ReservedFlags : 29;
        } ;
    } ;
} PROCESS_MITIGATION_CHILD_PROCESS_POLICY, *PPROCESS_MITIGATION_CHILD_PROCESS_POLICY;


typedef struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
    LARGE_INTEGER TotalUserTime;
    LARGE_INTEGER TotalKernelTime;
    LARGE_INTEGER ThisPeriodTotalUserTime;
    LARGE_INTEGER ThisPeriodTotalKernelTime;
    DWORD TotalPageFaultCount;
    DWORD TotalProcesses;
    DWORD ActiveProcesses;
    DWORD TotalTerminatedProcesses;
} JOBOBJECT_BASIC_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
    LARGE_INTEGER PerProcessUserTimeLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD LimitFlags;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    DWORD ActiveProcessLimit;
    ULONG_PTR Affinity;
    DWORD PriorityClass;
    DWORD SchedulingClass;
} JOBOBJECT_BASIC_LIMIT_INFORMATION, *PJOBOBJECT_BASIC_LIMIT_INFORMATION;

typedef struct _JOBOBJECT_EXTENDED_LIMIT_INFORMATION {
    JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
    IO_COUNTERS IoInfo;
    SIZE_T ProcessMemoryLimit;
    SIZE_T JobMemoryLimit;
    SIZE_T PeakProcessMemoryUsed;
    SIZE_T PeakJobMemoryUsed;
} JOBOBJECT_EXTENDED_LIMIT_INFORMATION, *PJOBOBJECT_EXTENDED_LIMIT_INFORMATION;


typedef struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
    DWORD NumberOfAssignedProcesses;
    DWORD NumberOfProcessIdsInList;
    ULONG_PTR ProcessIdList[1];
} JOBOBJECT_BASIC_PROCESS_ID_LIST, *PJOBOBJECT_BASIC_PROCESS_ID_LIST;

typedef struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
    DWORD UIRestrictionsClass;
} JOBOBJECT_BASIC_UI_RESTRICTIONS, *PJOBOBJECT_BASIC_UI_RESTRICTIONS;





typedef struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
    DWORD SecurityLimitFlags ;
    HANDLE JobToken ;
    PTOKEN_GROUPS SidsToDisable ;
    PTOKEN_PRIVILEGES PrivilegesToDelete ;
    PTOKEN_GROUPS RestrictedSids ;
} JOBOBJECT_SECURITY_LIMIT_INFORMATION, *PJOBOBJECT_SECURITY_LIMIT_INFORMATION ;

typedef struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
    DWORD EndOfJobTimeAction;
} JOBOBJECT_END_OF_JOB_TIME_INFORMATION, *PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

typedef struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
    PVOID CompletionKey;
    HANDLE CompletionPort;
} JOBOBJECT_ASSOCIATE_COMPLETION_PORT, *PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;

typedef struct _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION {
    JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
    IO_COUNTERS IoInfo;
} JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_JOBSET_INFORMATION {
    DWORD MemberLevel;
} JOBOBJECT_JOBSET_INFORMATION, *PJOBOBJECT_JOBSET_INFORMATION;

typedef enum _JOBOBJECT_RATE_CONTROL_TOLERANCE {
    ToleranceLow = 1,
    ToleranceMedium,
    ToleranceHigh
} JOBOBJECT_RATE_CONTROL_TOLERANCE, *PJOBOBJECT_RATE_CONTROL_TOLERANCE;

typedef enum _JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL {
    ToleranceIntervalShort = 1,
    ToleranceIntervalMedium,
    ToleranceIntervalLong
} JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL,
  *PJOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL;

typedef struct _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION {
    DWORD64 IoReadBytesLimit;
    DWORD64 IoWriteBytesLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD64 JobMemoryLimit;
    JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
    JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL RateControlToleranceInterval;
    DWORD LimitFlags;
} JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION, *PJOBOBJECT_NOTIFICATION_LIMIT_INFORMATION;

typedef struct JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2 {
    DWORD64 IoReadBytesLimit;
    DWORD64 IoWriteBytesLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    union {
        DWORD64 JobHighMemoryLimit;
        DWORD64 JobMemoryLimit;
    } ;

    union {
        JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
        JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlTolerance;
    } ;

    union {
        JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL RateControlToleranceInterval;
        JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL
            CpuRateControlToleranceInterval;
    } ;

    DWORD LimitFlags;
    JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlTolerance;
    DWORD64 JobLowMemoryLimit;
    JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL IoRateControlToleranceInterval;
    JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlTolerance;
    JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL NetRateControlToleranceInterval;
} JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2;


typedef struct _JOBOBJECT_LIMIT_VIOLATION_INFORMATION {
    DWORD LimitFlags;
    DWORD ViolationLimitFlags;
    DWORD64 IoReadBytes;
    DWORD64 IoReadBytesLimit;
    DWORD64 IoWriteBytes;
    DWORD64 IoWriteBytesLimit;
    LARGE_INTEGER PerJobUserTime;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD64 JobMemory;
    DWORD64 JobMemoryLimit;
    JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
    JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlToleranceLimit;
} JOBOBJECT_LIMIT_VIOLATION_INFORMATION, *PJOBOBJECT_LIMIT_VIOLATION_INFORMATION;

typedef struct JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2 {
    DWORD LimitFlags;
    DWORD ViolationLimitFlags;
    DWORD64 IoReadBytes;
    DWORD64 IoReadBytesLimit;
    DWORD64 IoWriteBytes;
    DWORD64 IoWriteBytesLimit;
    LARGE_INTEGER PerJobUserTime;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD64 JobMemory;
    union {
        DWORD64 JobHighMemoryLimit;
        DWORD64 JobMemoryLimit;
    } ;

    union {
        JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
        JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlTolerance;
    } ;

    union {
        JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlToleranceLimit;
        JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlToleranceLimit;
    } ;

    DWORD64 JobLowMemoryLimit;
    JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlTolerance;
    JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlToleranceLimit;
    JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlTolerance;
    JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlToleranceLimit;
} JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2;


typedef struct _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION {
    DWORD ControlFlags;
    union {
        DWORD CpuRate;
        DWORD Weight;
        struct {
            WORD   MinRate;
            WORD   MaxRate;
        } ;
    } ;
} JOBOBJECT_CPU_RATE_CONTROL_INFORMATION, *PJOBOBJECT_CPU_RATE_CONTROL_INFORMATION;





typedef enum JOB_OBJECT_NET_RATE_CONTROL_FLAGS {
    JOB_OBJECT_NET_RATE_CONTROL_ENABLE = 0x1,
    JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH = 0x2,
    JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG = 0x4,
    JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS = 0x7
} JOB_OBJECT_NET_RATE_CONTROL_FLAGS;



extern "C++" { inline constexpr JOB_OBJECT_NET_RATE_CONTROL_FLAGS operator | (JOB_OBJECT_NET_RATE_CONTROL_FLAGS a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_NET_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)a) | ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_NET_RATE_CONTROL_FLAGS &operator |= (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type &)a) |= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } inline constexpr JOB_OBJECT_NET_RATE_CONTROL_FLAGS operator & (JOB_OBJECT_NET_RATE_CONTROL_FLAGS a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_NET_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)a) & ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_NET_RATE_CONTROL_FLAGS &operator &= (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type &)a) &= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } inline constexpr JOB_OBJECT_NET_RATE_CONTROL_FLAGS operator ~ (JOB_OBJECT_NET_RATE_CONTROL_FLAGS a) throw() { return JOB_OBJECT_NET_RATE_CONTROL_FLAGS(~((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)a)); } inline constexpr JOB_OBJECT_NET_RATE_CONTROL_FLAGS operator ^ (JOB_OBJECT_NET_RATE_CONTROL_FLAGS a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_NET_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)a) ^ ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_NET_RATE_CONTROL_FLAGS &operator ^= (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &a, JOB_OBJECT_NET_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_NET_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type &)a) ^= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_NET_RATE_CONTROL_FLAGS>::type)b)); } }
typedef char __C_ASSERT__[(JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS == (JOB_OBJECT_NET_RATE_CONTROL_ENABLE + JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH + JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG))?1:-1];
#line 11883 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 11885 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



typedef struct JOBOBJECT_NET_RATE_CONTROL_INFORMATION {
    DWORD64 MaxBandwidth;
    JOB_OBJECT_NET_RATE_CONTROL_FLAGS ControlFlags;
    BYTE  DscpTag;
} JOBOBJECT_NET_RATE_CONTROL_INFORMATION;








typedef enum JOB_OBJECT_IO_RATE_CONTROL_FLAGS {
    JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 0x1,
    JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME = 0x2,
    JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = JOB_OBJECT_IO_RATE_CONTROL_ENABLE |
                                             JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME
} JOB_OBJECT_IO_RATE_CONTROL_FLAGS;



extern "C++" { inline constexpr JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator | (JOB_OBJECT_IO_RATE_CONTROL_FLAGS a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_IO_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)a) | ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_IO_RATE_CONTROL_FLAGS &operator |= (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type &)a) |= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } inline constexpr JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator & (JOB_OBJECT_IO_RATE_CONTROL_FLAGS a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_IO_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)a) & ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_IO_RATE_CONTROL_FLAGS &operator &= (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type &)a) &= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } inline constexpr JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator ~ (JOB_OBJECT_IO_RATE_CONTROL_FLAGS a) throw() { return JOB_OBJECT_IO_RATE_CONTROL_FLAGS(~((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)a)); } inline constexpr JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator ^ (JOB_OBJECT_IO_RATE_CONTROL_FLAGS a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return JOB_OBJECT_IO_RATE_CONTROL_FLAGS(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)a) ^ ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } inline JOB_OBJECT_IO_RATE_CONTROL_FLAGS &operator ^= (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &a, JOB_OBJECT_IO_RATE_CONTROL_FLAGS b) throw() { return (JOB_OBJECT_IO_RATE_CONTROL_FLAGS &)(((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type &)a) ^= ((_ENUM_FLAG_SIZED_INTEGER<JOB_OBJECT_IO_RATE_CONTROL_FLAGS>::type)b)); } }

#line 11913 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE {
    LONG64 MaxIops;
    LONG64 MaxBandwidth;
    LONG64 ReservationIops;
    PWSTR VolumeName;
    DWORD BaseIoSize;
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
    WORD   VolumeNameLength;
} JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE;

typedef JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE
    JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V1;

typedef struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V2 {
    LONG64 MaxIops;
    LONG64 MaxBandwidth;
    LONG64 ReservationIops;
    PWSTR VolumeName;
    DWORD BaseIoSize;
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
    WORD   VolumeNameLength;
    LONG64 CriticalReservationIops;
    LONG64 ReservationBandwidth;
    LONG64 CriticalReservationBandwidth;
    LONG64 MaxTimePercent;
    LONG64 ReservationTimePercent;
    LONG64 CriticalReservationTimePercent;
} JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V2;

typedef struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V3 {
    LONG64 MaxIops;
    LONG64 MaxBandwidth;
    LONG64 ReservationIops;
    PWSTR VolumeName;
    DWORD BaseIoSize;
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
    WORD   VolumeNameLength;
    LONG64 CriticalReservationIops;
    LONG64 ReservationBandwidth;
    LONG64 CriticalReservationBandwidth;
    LONG64 MaxTimePercent;
    LONG64 ReservationTimePercent;
    LONG64 CriticalReservationTimePercent;
    LONG64 SoftMaxIops;
    LONG64 SoftMaxBandwidth;
    LONG64 SoftMaxTimePercent;
    LONG64 LimitExcessNotifyIops;
    LONG64 LimitExcessNotifyBandwidth;
    LONG64 LimitExcessNotifyTimePercent;
} JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V3;



typedef enum JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS {
    JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE = 0x1,
    JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE = 0x2,
    JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS = 0x3
} JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS;

typedef struct _JOBOBJECT_IO_ATTRIBUTION_STATS {

    ULONG_PTR IoCount;
    ULONGLONG TotalNonOverlappedQueueTime;
    ULONGLONG TotalNonOverlappedServiceTime;
    ULONGLONG TotalSize;

} JOBOBJECT_IO_ATTRIBUTION_STATS, *PJOBOBJECT_IO_ATTRIBUTION_STATS;

typedef struct _JOBOBJECT_IO_ATTRIBUTION_INFORMATION {
    DWORD ControlFlags;

    JOBOBJECT_IO_ATTRIBUTION_STATS ReadStats;
    JOBOBJECT_IO_ATTRIBUTION_STATS WriteStats;

} JOBOBJECT_IO_ATTRIBUTION_INFORMATION, *PJOBOBJECT_IO_ATTRIBUTION_INFORMATION;
































































































































typedef enum _JOBOBJECTINFOCLASS {
    JobObjectBasicAccountingInformation = 1,
    JobObjectBasicLimitInformation,
    JobObjectBasicProcessIdList,
    JobObjectBasicUIRestrictions,
    JobObjectSecurityLimitInformation,  
    JobObjectEndOfJobTimeInformation,
    JobObjectAssociateCompletionPortInformation,
    JobObjectBasicAndIoAccountingInformation,
    JobObjectExtendedLimitInformation,
    JobObjectJobSetInformation,
    JobObjectGroupInformation,
    JobObjectNotificationLimitInformation,
    JobObjectLimitViolationInformation,
    JobObjectGroupInformationEx,
    JobObjectCpuRateControlInformation,
    JobObjectCompletionFilter,
    JobObjectCompletionCounter,
    JobObjectReserved1Information = 18,
    JobObjectReserved2Information,
    JobObjectReserved3Information,
    JobObjectReserved4Information,
    JobObjectReserved5Information,
    JobObjectReserved6Information,
    JobObjectReserved7Information,
    JobObjectReserved8Information,
    JobObjectReserved9Information,
    JobObjectReserved10Information,
    JobObjectReserved11Information,
    JobObjectReserved12Information,
    JobObjectReserved13Information,
    JobObjectReserved14Information = 31,
    JobObjectNetRateControlInformation,
    JobObjectNotificationLimitInformation2,
    JobObjectLimitViolationInformation2,
    JobObjectCreateSilo,
    JobObjectSiloBasicInformation,
    JobObjectReserved15Information = 37,
    JobObjectReserved16Information = 38,
    JobObjectReserved17Information = 39,
    JobObjectReserved18Information = 40,
    JobObjectReserved19Information = 41,
    JobObjectReserved20Information = 42,
    JobObjectReserved21Information = 43,
    JobObjectReserved22Information = 44,
    JobObjectReserved23Information = 45,
    JobObjectReserved24Information = 46,
    JobObjectReserved25Information = 47,
    MaxJobObjectInfoClass
} JOBOBJECTINFOCLASS;



typedef struct _SILOOBJECT_BASIC_INFORMATION {
    DWORD SiloId;
    DWORD SiloParentId;
    DWORD NumberOfProcesses;
    BOOLEAN IsInServerSilo;
    BYTE  Reserved[3];
} SILOOBJECT_BASIC_INFORMATION, *PSILOOBJECT_BASIC_INFORMATION;

typedef enum _SERVERSILO_STATE {
    SERVERSILO_INITING = 0,
    SERVERSILO_STARTED,
    SERVERSILO_SHUTTING_DOWN,
    SERVERSILO_TERMINATING,
    SERVERSILO_TERMINATED,
} SERVERSILO_STATE, *PSERVERSILO_STATE;

typedef struct _SERVERSILO_BASIC_INFORMATION {
    DWORD ServiceSessionId;
    SERVERSILO_STATE State;
    DWORD    ExitStatus;
} SERVERSILO_BASIC_INFORMATION, *PSERVERSILO_BASIC_INFORMATION;


typedef enum _FIRMWARE_TYPE {
    FirmwareTypeUnknown,
    FirmwareTypeBios,
    FirmwareTypeUefi,
    FirmwareTypeMax
} FIRMWARE_TYPE, *PFIRMWARE_TYPE;

































typedef enum _LOGICAL_PROCESSOR_RELATIONSHIP {
    RelationProcessorCore,
    RelationNumaNode,
    RelationCache,
    RelationProcessorPackage,
    RelationGroup,
    RelationAll = 0xffff
} LOGICAL_PROCESSOR_RELATIONSHIP;



typedef enum _PROCESSOR_CACHE_TYPE {
    CacheUnified,
    CacheInstruction,
    CacheData,
    CacheTrace
} PROCESSOR_CACHE_TYPE;



typedef struct _CACHE_DESCRIPTOR {
    BYTE   Level;
    BYTE   Associativity;
    WORD   LineSize;
    DWORD  Size;
    PROCESSOR_CACHE_TYPE Type;
} CACHE_DESCRIPTOR, *PCACHE_DESCRIPTOR;

typedef struct _SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
    ULONG_PTR   ProcessorMask;
    LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
    union {
        struct {
            BYTE  Flags;
        } ProcessorCore;
        struct {
            DWORD NodeNumber;
        } NumaNode;
        CACHE_DESCRIPTOR Cache;
        ULONGLONG  Reserved[2];
    } ;
} SYSTEM_LOGICAL_PROCESSOR_INFORMATION, *PSYSTEM_LOGICAL_PROCESSOR_INFORMATION;

typedef struct _PROCESSOR_RELATIONSHIP {
    BYTE  Flags;
    BYTE  EfficiencyClass;
    BYTE  Reserved[20];
    WORD   GroupCount;
      GROUP_AFFINITY GroupMask[1];
} PROCESSOR_RELATIONSHIP, *PPROCESSOR_RELATIONSHIP;

typedef struct _NUMA_NODE_RELATIONSHIP {
    DWORD NodeNumber;
    BYTE  Reserved[20];
    GROUP_AFFINITY GroupMask;
} NUMA_NODE_RELATIONSHIP, *PNUMA_NODE_RELATIONSHIP;

typedef struct _CACHE_RELATIONSHIP {
    BYTE  Level;
    BYTE  Associativity;
    WORD   LineSize;
    DWORD CacheSize;
    PROCESSOR_CACHE_TYPE Type;
    BYTE  Reserved[20];
    GROUP_AFFINITY GroupMask;
} CACHE_RELATIONSHIP, *PCACHE_RELATIONSHIP;

typedef struct _PROCESSOR_GROUP_INFO {
    BYTE  MaximumProcessorCount;
    BYTE  ActiveProcessorCount;
    BYTE  Reserved[38];
    KAFFINITY ActiveProcessorMask;
} PROCESSOR_GROUP_INFO, *PPROCESSOR_GROUP_INFO;

typedef struct _GROUP_RELATIONSHIP {
    WORD   MaximumGroupCount;
    WORD   ActiveGroupCount;
    BYTE  Reserved[20];
    PROCESSOR_GROUP_INFO GroupInfo[1];
} GROUP_RELATIONSHIP, *PGROUP_RELATIONSHIP;

  struct _SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX {
    LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
    DWORD Size;
    union {
        PROCESSOR_RELATIONSHIP Processor;
        NUMA_NODE_RELATIONSHIP NumaNode;
        CACHE_RELATIONSHIP Cache;
        GROUP_RELATIONSHIP Group;
    } ;
};

typedef struct _SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX, *PSYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;

typedef enum _CPU_SET_INFORMATION_TYPE {
    CpuSetInformation
} CPU_SET_INFORMATION_TYPE, *PCPU_SET_INFORMATION_TYPE;

  struct _SYSTEM_CPU_SET_INFORMATION {
    DWORD Size;
    CPU_SET_INFORMATION_TYPE Type;
    union {
        struct {
            DWORD Id;
            WORD   Group;
            BYTE  LogicalProcessorIndex;
            BYTE  CoreIndex;
            BYTE  LastLevelCacheIndex;
            BYTE  NumaNodeIndex;
            BYTE  EfficiencyClass;
            union {






                BYTE  AllFlags;
                struct {
                    BYTE  Parked : 1;
                    BYTE  Allocated : 1;
                    BYTE  AllocatedToTargetProcess : 1;
                    BYTE  RealTime : 1;
                    BYTE  ReservedFlags : 4;
                } ;
            } ;
            DWORD Reserved;
            DWORD64 AllocationTag;
        } CpuSet;
    } ;
};

typedef struct _SYSTEM_CPU_SET_INFORMATION SYSTEM_CPU_SET_INFORMATION, *PSYSTEM_CPU_SET_INFORMATION;



typedef struct _SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION {
    DWORD64 CycleTime;
} SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION, *PSYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION;






























































































































































typedef struct _XSTATE_FEATURE {
    DWORD Offset;
    DWORD Size;
} XSTATE_FEATURE, *PXSTATE_FEATURE;

typedef struct _XSTATE_CONFIGURATION {
    
    DWORD64 EnabledFeatures;

    
    DWORD64 EnabledVolatileFeatures;

    
    DWORD Size;

    
    union {
        DWORD ControlFlags;
        struct
        {
            DWORD OptimizedSave : 1;
            DWORD CompactionEnabled : 1;
        };
    };

    
    XSTATE_FEATURE Features[(64)];

    
    DWORD64 EnabledSupervisorFeatures;

    
    DWORD64 AlignedFeatures;

    
    DWORD AllFeatureSize;

    
    DWORD AllFeatures[(64)];

} XSTATE_CONFIGURATION, *PXSTATE_CONFIGURATION;



typedef struct _MEMORY_BASIC_INFORMATION {
    PVOID BaseAddress;
    PVOID AllocationBase;
    DWORD AllocationProtect;
    SIZE_T RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION, *PMEMORY_BASIC_INFORMATION;



typedef struct _MEMORY_BASIC_INFORMATION32 {
    DWORD BaseAddress;
    DWORD AllocationBase;
    DWORD AllocationProtect;
    DWORD RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION32, *PMEMORY_BASIC_INFORMATION32;

typedef struct __declspec(align(16)) _MEMORY_BASIC_INFORMATION64 {
    ULONGLONG BaseAddress;
    ULONGLONG AllocationBase;
    DWORD     AllocationProtect;
    DWORD     __alignment1;
    ULONGLONG RegionSize;
    DWORD     State;
    DWORD     Protect;
    DWORD     Type;
    DWORD     __alignment2;
} MEMORY_BASIC_INFORMATION64, *PMEMORY_BASIC_INFORMATION64;





























typedef struct _CFG_CALL_TARGET_INFO {
    ULONG_PTR Offset;
    ULONG_PTR Flags;
} CFG_CALL_TARGET_INFO, *PCFG_CALL_TARGET_INFO;











































































typedef struct _ENCLAVE_CREATE_INFO_SGX {
    BYTE  Secs[4096];
} ENCLAVE_CREATE_INFO_SGX, *PENCLAVE_CREATE_INFO_SGX;

typedef struct _ENCLAVE_INIT_INFO_SGX {
    BYTE  SigStruct[1808];
    BYTE  Reserved1[240];
    BYTE  EInitToken[304];
    BYTE  Reserved2[1744];
} ENCLAVE_INIT_INFO_SGX, *PENCLAVE_INIT_INFO_SGX;



typedef struct _ENCLAVE_CREATE_INFO_VBS {
    DWORD Flags;
    BYTE  OwnerID[32];
} ENCLAVE_CREATE_INFO_VBS, *PENCLAVE_CREATE_INFO_VBS;




typedef struct _ENCLAVE_INIT_INFO_VBS {
    DWORD Length;
    DWORD ThreadCount;
} ENCLAVE_INIT_INFO_VBS, *PENCLAVE_INIT_INFO_VBS;



typedef PVOID (ENCLAVE_TARGET_FUNCTION)(PVOID);
typedef ENCLAVE_TARGET_FUNCTION (*PENCLAVE_TARGET_FUNCTION);
typedef PENCLAVE_TARGET_FUNCTION LPENCLAVE_TARGET_FUNCTION;

#line 12747 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"











































































































































typedef struct _FILE_ID_128 {                               
    BYTE  Identifier[16];                                   
} FILE_ID_128, *PFILE_ID_128;                               





typedef struct _FILE_NOTIFY_INFORMATION {
    DWORD NextEntryOffset;
    DWORD Action;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FILE_NOTIFY_INFORMATION, *PFILE_NOTIFY_INFORMATION;


typedef struct _FILE_NOTIFY_EXTENDED_INFORMATION {
    DWORD NextEntryOffset;
    DWORD Action;
    LARGE_INTEGER CreationTime;
    LARGE_INTEGER LastModificationTime;
    LARGE_INTEGER LastChangeTime;
    LARGE_INTEGER LastAccessTime;
    LARGE_INTEGER AllocatedLength;
    LARGE_INTEGER FileSize;
    DWORD FileAttributes;
    DWORD ReparsePointTag;
    LARGE_INTEGER FileId;
    LARGE_INTEGER ParentFileId;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FILE_NOTIFY_EXTENDED_INFORMATION, *PFILE_NOTIFY_EXTENDED_INFORMATION;
#line 12919 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






typedef union _FILE_SEGMENT_ELEMENT {
    PVOID64 Buffer;
    ULONGLONG Alignment;
}FILE_SEGMENT_ELEMENT, *PFILE_SEGMENT_ELEMENT;













































#line 12975 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"













#line 12989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










typedef struct _REPARSE_GUID_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    GUID   ReparseGuid;
    struct {
        BYTE   DataBuffer[1];
    } GenericReparseBuffer;
} REPARSE_GUID_DATA_BUFFER, *PREPARSE_GUID_DATA_BUFFER;









































































































































#line 13146 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _SCRUB_DATA_INPUT {

    
    
    

    DWORD Size;

    
    
    
    
    
    

    DWORD Flags;

    
    
    
    
    

    DWORD MaximumIos;
    
    
    
    
    
    
    
    DWORD ObjectId[4];

    
    
    

    DWORD Reserved[13];

    
    
    
    
    

    BYTE  ResumeContext[816];

} SCRUB_DATA_INPUT, *PSCRUB_DATA_INPUT;



typedef struct _SCRUB_PARITY_EXTENT {

    LONGLONG Offset;

    ULONGLONG Length;

} SCRUB_PARITY_EXTENT, *PSCRUB_PARITY_EXTENT;

typedef struct _SCRUB_PARITY_EXTENT_DATA {

    
    
    

    WORD   Size;

    
    
    

    WORD   Flags;

    
    
    

    WORD   NumberOfParityExtents;

    
    
    

    WORD   MaximumNumberOfParityExtents;

    
    
    

    SCRUB_PARITY_EXTENT ParityExtents[1];

} SCRUB_PARITY_EXTENT_DATA, *PSCRUB_PARITY_EXTENT_DATA;

#line 13241 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _SCRUB_DATA_OUTPUT {

    
    
    

    DWORD Size;

    
    
    
    
    
    
    

    DWORD Flags;

    
    
    

    DWORD Status;

    
    
    
    

    ULONGLONG ErrorFileOffset;

    
    
    
    

    ULONGLONG ErrorLength;

    
    
    

    ULONGLONG NumberOfBytesRepaired;

    
    
    

    ULONGLONG NumberOfBytesFailed;

    
    
    

    ULONGLONG InternalFileReference;



    
    
    
    
    
    

    WORD   ResumeContextLength;

    
    
    
    
    

    WORD   ParityExtentDataOffset;

    
    
    

    DWORD Reserved[5];









#line 13332 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

    
    
    
    
    
    
    
    
    
    
    
    

    BYTE  ResumeContext[816];

} SCRUB_DATA_OUTPUT, *PSCRUB_DATA_OUTPUT;

#line 13351 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









typedef enum _SharedVirtualDiskSupportType
{
    
    
    
    SharedVirtualDisksUnsupported = 0,

    
    
    
    SharedVirtualDisksSupported = 1,

    
    
    
    
    SharedVirtualDiskSnapshotsSupported = 3,

    
    
    
    
    SharedVirtualDiskCDPSnapshotsSupported = 7
} SharedVirtualDiskSupportType;

typedef enum _SharedVirtualDiskHandleState
{
    
    
    
    SharedVirtualDiskHandleStateNone = 0,

    
    
    
    
    SharedVirtualDiskHandleStateFileShared = 1,

    
    
    
    
    SharedVirtualDiskHandleStateHandleShared = 3
} SharedVirtualDiskHandleState;





typedef struct _SHARED_VIRTUAL_DISK_SUPPORT {
    
    
    
    
    SharedVirtualDiskSupportType SharedVirtualDiskSupport;

    
    
    
    
    SharedVirtualDiskHandleState HandleState;
} SHARED_VIRTUAL_DISK_SUPPORT, *PSHARED_VIRTUAL_DISK_SUPPORT;







#line 13430 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"



















#line 13450 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"





















#line 13472 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

typedef struct _NETWORK_APP_INSTANCE_EA {

    
    
    
    

    GUID AppInstanceID;

    
    
    

    DWORD CsvFlags;

} NETWORK_APP_INSTANCE_EA, *PNETWORK_APP_INSTANCE_EA;

#line 13491 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"

#line 13493 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"






















extern "C" const GUID  GUID_MAX_POWER_SAVINGS;






extern "C" const GUID  GUID_MIN_POWER_SAVINGS;






extern "C" const GUID  GUID_TYPICAL_POWER_SAVINGS;







extern "C" const GUID  NO_SUBGROUP_GUID;







extern "C" const GUID  ALL_POWERSCHEMES_GUID;




































extern "C" const GUID  GUID_POWERSCHEME_PERSONALITY;








extern "C" const GUID  GUID_ACTIVE_POWERSCHEME;














extern "C" const GUID  GUID_IDLE_RESILIENCY_SUBGROUP;







extern "C" const GUID  GUID_IDLE_RESILIENCY_PERIOD;





extern "C" const GUID  GUID_DEEP_SLEEP_ENABLED;








extern "C" const GUID  GUID_DEEP_SLEEP_PLATFORM_STATE;






extern "C" const GUID  GUID_DISK_COALESCING_POWERDOWN_TIMEOUT;












extern "C" const GUID  GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT;










extern "C" const GUID  GUID_VIDEO_SUBGROUP;







extern "C" const GUID  GUID_VIDEO_POWERDOWN_TIMEOUT;








extern "C" const GUID  GUID_VIDEO_ANNOYANCE_TIMEOUT;








extern "C" const GUID  GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE;







extern "C" const GUID  GUID_VIDEO_DIM_TIMEOUT;







extern "C" const GUID  GUID_VIDEO_ADAPTIVE_POWERDOWN;






extern "C" const GUID  GUID_MONITOR_POWER_ON;






extern "C" const GUID  GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS;






extern "C" const GUID  GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS;






extern "C" const GUID  GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS;







extern "C" const GUID  GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS;






extern "C" const GUID  GUID_CONSOLE_DISPLAY_STATE;







extern "C" const GUID  GUID_ALLOW_DISPLAY_REQUIRED;








extern "C" const GUID  GUID_VIDEO_CONSOLE_LOCK_TIMEOUT;






extern "C" const GUID  GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP;






extern "C" const GUID  GUID_NON_ADAPTIVE_INPUT_TIMEOUT;






extern "C" const GUID  GUID_ADAPTIVE_INPUT_CONTROLLER_STATE;







extern "C" const GUID  GUID_DISK_SUBGROUP;




extern "C" const GUID  GUID_DISK_MAX_POWER;





extern "C" const GUID  GUID_DISK_POWERDOWN_TIMEOUT;






extern "C" const GUID  GUID_DISK_IDLE_TIMEOUT;








extern "C" const GUID  GUID_DISK_BURST_IGNORE_THRESHOLD;





extern "C" const GUID  GUID_DISK_ADAPTIVE_POWERDOWN;








extern "C" const GUID  GUID_SLEEP_SUBGROUP;







extern "C" const GUID  GUID_SLEEP_IDLE_THRESHOLD;





extern "C" const GUID  GUID_STANDBY_TIMEOUT;








extern "C" const GUID  GUID_UNATTEND_SLEEP_TIMEOUT;





extern "C" const GUID  GUID_HIBERNATE_TIMEOUT;





extern "C" const GUID  GUID_HIBERNATE_FASTS4_POLICY;








extern "C" const GUID  GUID_CRITICAL_POWER_TRANSITION;





extern "C" const GUID  GUID_SYSTEM_AWAYMODE;






extern "C" const GUID  GUID_ALLOW_AWAYMODE;






extern "C" const GUID  GUID_USER_PRESENCE_PREDICTION;






extern "C" const GUID  GUID_STANDBY_BUDGET_GRACE_PERIOD;






extern "C" const GUID  GUID_STANDBY_BUDGET_PERCENT;






extern "C" const GUID  GUID_STANDBY_RESERVE_GRACE_PERIOD;






extern "C" const GUID  GUID_STANDBY_RESERVE_TIME;






extern "C" const GUID  GUID_STANDBY_RESET_PERCENT;







extern "C" const GUID  GUID_ALLOW_STANDBY_STATES;






extern "C" const GUID  GUID_ALLOW_RTC_WAKE;






extern "C" const GUID  GUID_LEGACY_RTC_MITIGATION;







extern "C" const GUID  GUID_ALLOW_SYSTEM_REQUIRED;








extern "C" const GUID  GUID_POWER_SAVING_STATUS;







extern "C" const GUID  GUID_ENERGY_SAVER_SUBGROUP;






extern "C" const GUID  GUID_ENERGY_SAVER_BATTERY_THRESHOLD;






extern "C" const GUID  GUID_ENERGY_SAVER_BRIGHTNESS;






extern "C" const GUID  GUID_ENERGY_SAVER_POLICY;








extern "C" const GUID  GUID_SYSTEM_BUTTON_SUBGROUP;




















extern "C" const GUID  GUID_POWERBUTTON_ACTION;





extern "C" const GUID  GUID_SLEEPBUTTON_ACTION;






extern "C" const GUID  GUID_USERINTERFACEBUTTON_ACTION;





extern "C" const GUID  GUID_LIDCLOSE_ACTION;
extern "C" const GUID  GUID_LIDOPEN_POWERSTATE;








extern "C" const GUID  GUID_BATTERY_SUBGROUP;











extern "C" const GUID  GUID_BATTERY_DISCHARGE_ACTION_0;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_LEVEL_0;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_FLAGS_0;

extern "C" const GUID  GUID_BATTERY_DISCHARGE_ACTION_1;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_LEVEL_1;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_FLAGS_1;

extern "C" const GUID  GUID_BATTERY_DISCHARGE_ACTION_2;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_LEVEL_2;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_FLAGS_2;

extern "C" const GUID  GUID_BATTERY_DISCHARGE_ACTION_3;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_LEVEL_3;
extern "C" const GUID  GUID_BATTERY_DISCHARGE_FLAGS_3;










extern "C" const GUID  GUID_PROCESSOR_SETTINGS_SUBGROUP;





extern "C" const GUID  GUID_PROCESSOR_THROTTLE_POLICY;

















extern "C" const GUID  GUID_PROCESSOR_THROTTLE_MAXIMUM;









extern "C" const GUID  GUID_PROCESSOR_THROTTLE_MAXIMUM_1;









extern "C" const GUID  GUID_PROCESSOR_THROTTLE_MINIMUM;









extern "C" const GUID  GUID_PROCESSOR_THROTTLE_MINIMUM_1;






extern "C" const GUID  GUID_PROCESSOR_FREQUENCY_LIMIT;
#line 14159 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


extern "C" const GUID  GUID_PROCESSOR_FREQUENCY_LIMIT_1;
#line 14163 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







extern "C" const GUID  GUID_PROCESSOR_ALLOW_THROTTLING;









extern "C" const GUID  GUID_PROCESSOR_IDLESTATE_POLICY;





extern "C" const GUID  GUID_PROCESSOR_PERFSTATE_POLICY;







extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_THRESHOLD_1;







extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_THRESHOLD_1;







extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_POLICY;








extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_POLICY_1;







extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_POLICY;








extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_POLICY_1;








extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_TIME;








extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_TIME_1;








extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_TIME;








extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_TIME_1;







extern "C" const GUID  GUID_PROCESSOR_PERF_TIME_CHECK;







extern "C" const GUID  GUID_PROCESSOR_PERF_BOOST_POLICY;
#line 14308 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










extern "C" const GUID  GUID_PROCESSOR_PERF_BOOST_MODE;
#line 14320 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"
















extern "C" const GUID  GUID_PROCESSOR_PERF_AUTONOMOUS_MODE;
#line 14338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









extern "C" const GUID  GUID_PROCESSOR_PERF_ENERGY_PERFORMANCE_PREFERENCE;
#line 14349 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"









extern "C" const GUID  GUID_PROCESSOR_PERF_AUTONOMOUS_ACTIVITY_WINDOW;
#line 14360 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"








extern "C" const GUID  GUID_PROCESSOR_DUTY_CYCLING;
#line 14370 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










extern "C" const GUID  GUID_PROCESSOR_IDLE_ALLOW_SCALING;






extern "C" const GUID  GUID_PROCESSOR_IDLE_DISABLE;








extern "C" const GUID  GUID_PROCESSOR_IDLE_STATE_MAXIMUM;








extern "C" const GUID  GUID_PROCESSOR_IDLE_TIME_CHECK;








extern "C" const GUID  GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD;







extern "C" const GUID  GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY;












extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_MAX_CORES;







extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_MAX_CORES_1;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_MIN_CORES;







extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_MIN_CORES_1;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING;






extern "C" const GUID  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD;







extern "C" const GUID  GUID_PROCESSOR_PARKING_CORE_OVERRIDE;







extern "C" const GUID  GUID_PROCESSOR_PARKING_PERF_STATE;







extern "C" const GUID  GUID_PROCESSOR_PARKING_PERF_STATE_1;







extern "C" const GUID  GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD;







extern "C" const GUID  GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD;







extern "C" const GUID  GUID_PROCESSOR_PARKING_DISTRIBUTION_THRESHOLD;






extern "C" const GUID  GUID_PROCESSOR_PERF_HISTORY;







extern "C" const GUID  GUID_PROCESSOR_PERF_HISTORY_1;









extern "C" const GUID  GUID_PROCESSOR_PERF_INCREASE_HISTORY;









extern "C" const GUID  GUID_PROCESSOR_PERF_DECREASE_HISTORY;









extern "C" const GUID  GUID_PROCESSOR_PERF_CORE_PARKING_HISTORY;









extern "C" const GUID  GUID_PROCESSOR_PERF_LATENCY_HINT;






extern "C" const GUID  GUID_PROCESSOR_PERF_LATENCY_HINT_PERF;







extern "C" const GUID  GUID_PROCESSOR_PERF_LATENCY_HINT_PERF_1;







extern "C" const GUID  GUID_PROCESSOR_LATENCY_HINT_MIN_UNPARK;







extern "C" const GUID  GUID_PROCESSOR_LATENCY_HINT_MIN_UNPARK_1;







extern "C" const GUID  GUID_PROCESSOR_DISTRIBUTE_UTILITY;










extern "C" const GUID  GUID_PROCESSOR_HETEROGENEOUS_POLICY;







extern "C" const GUID  GUID_PROCESSOR_HETERO_DECREASE_TIME;







extern "C" const GUID  GUID_PROCESSOR_HETERO_INCREASE_TIME;








extern "C" const GUID  GUID_PROCESSOR_HETERO_DECREASE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_HETERO_INCREASE_THRESHOLD;








extern "C" const GUID  GUID_PROCESSOR_CLASS0_FLOOR_PERF;








extern "C" const GUID  GUID_PROCESSOR_CLASS1_INITIAL_PERF;






extern "C" const GUID  GUID_PROCESSOR_THREAD_SCHEDULING_POLICY;
#line 14767 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







extern "C" const GUID  GUID_PROCESSOR_SHORT_THREAD_SCHEDULING_POLICY;
#line 14776 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"







extern "C" const GUID  GUID_SYSTEM_COOLING_POLICY;









extern "C" const GUID  GUID_LOCK_CONSOLE_ON_WAKE;









extern "C" const GUID  GUID_DEVICE_IDLE_POLICY;








extern "C" const GUID  GUID_CONNECTIVITY_IN_STANDBY;









extern "C" const GUID  GUID_DISCONNECTED_STANDBY_MODE;




















extern "C" const GUID  GUID_ACDC_POWER_SOURCE;















extern "C" const GUID  GUID_LIDSWITCH_STATE_CHANGE;
















extern "C" const GUID  GUID_BATTERY_PERCENTAGE_REMAINING;












extern "C" const GUID  GUID_BATTERY_COUNT;






extern "C" const GUID  GUID_GLOBAL_USER_PRESENCE;










extern "C" const GUID  GUID_SESSION_DISPLAY_STATUS;









extern "C" const GUID  GUID_SESSION_USER_PRESENCE;






extern "C" const GUID  GUID_IDLE_BACKGROUND_TASK;






extern "C" const GUID  GUID_BACKGROUND_TASK_NOTIFICATION;







extern "C" const GUID  GUID_APPLAUNCH_BUTTON;










extern "C" const GUID  GUID_PCIEXPRESS_SETTINGS_SUBGROUP;





extern "C" const GUID  GUID_PCIEXPRESS_ASPM_POLICY;











extern "C" const GUID  GUID_ENABLE_SWITCH_FORCED_SHUTDOWN;






extern "C" const GUID  GUID_INTSTEER_SUBGROUP;
#line 14977 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


extern "C" const GUID  GUID_INTSTEER_MODE;
#line 14981 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


extern "C" const GUID  GUID_INTSTEER_LOAD_PER_PROC_TRIGGER;
#line 14985 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


extern "C" const GUID  GUID_INTSTEER_TIME_UNPARK_TRIGGER;
#line 14989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"










extern "C" const GUID  GUID_MIXED_REALITY_MODE;
#line 15001 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\um\\winnt.h"


typedef enum _SYSTEM_POWER_STATE {
    PowerSystemUnspecified = 0,
    PowerSystemWorking     = 1,
    PowerSystemSleeping1   = 2,
    PowerSystemSleeping2   = 3,
    PowerSystemSleeping3   = 4,
    PowerSystemHibernate   = 5,
    PowerSystemShutdown    = 6,
    PowerSystemMaximum     = 7
} SYSTEM_POWER_STATE, *PSYSTEM_POWER_STATE;



typedef enum {
    PowerActionNone = 0,
    PowerActionReserved,
    PowerActionSleep,
    PowerActionHibernate,
    PowerActionShutdown,
    PowerActionShutdownReset,
    PowerActionShutdownOff,
    PowerActionWarmEject,
    PowerActionDisplayOff
} POWER_ACTION, *PPOWER_ACTION;

typedef enum _DEVICE_POWER_STATE {
    PowerDeviceUnspecified = 0,
    PowerDeviceD0,
    PowerDeviceD1,
    PowerDeviceD2,
    PowerDeviceD3,
    PowerDeviceMaximum
} DEVICE_POWER_STATE, *PDEVICE_POWER_STATE;

typedef enum _MONITOR_DISPLAY_STATE {
    PowerMonitorOff = 0,
    PowerMonitorOn,
    PowerMonitorDim
} MONITOR_DISPLAY_STATE, *PMONITOR_DISPLAY_STATE;

typedef enum _USER_ACTIVITY_PRESENCE {
    PowerUserPresent = 0,
    PowerUserNotPresent,
    PowerUserInactive,
    PowerUserMaximum,
    PowerUserInvalid = PowerUserMaximum
} USER_ACTIVITY_PRESENCE, *PUSER_ACTIVITY_PRESENCE;









typedef DWORD EXECUTION_STATE, *PEXECUTION_STATE;

typedef enum {
    LT_DONT_CARE,
    LT_LOWEST_LATENCY
} LATENCY_TIME;


















typedef enum _POWER_REQUEST_TYPE {














