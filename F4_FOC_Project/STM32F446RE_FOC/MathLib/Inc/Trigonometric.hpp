/*
 * Trigonometric.hpp
 *
 *  Created on: Aug 31, 2019
 *      Author: watashi
 *
 *
 *  三角関数演算クラス
 *　やっていることはWrapperにすぎない。
 *　別のマイコン・ライブラリへ変更したときに、このClassの演算を変えるだけで、
 *　全ての演算方法を変更できる。
 *
 */

#ifndef INC_TRIGONOMETRIC_HPP_
#define INC_TRIGONOMETRIC_HPP_

#include "math.h"
#include "DSPInc.hpp"

class Trigonometric {
private:
public:
	Trigonometric();
	virtual ~Trigonometric();

	static float sin(float pVal);
	static float cos(float pVal);
	static float atan2(float pNumerator, float pDenominator);
};

#endif /* INC_TRIGONOMETRIC_HPP_ */
