/*
 * MotorCtrl.hpp
 *
 *  Created on: Aug 5, 2019
 *      Author: watashi
 */

#ifndef MOTORCTRL_HPP_
#define MOTORCTRL_HPP_

#include "MotorInterface.hpp"

class MotorCtrl : MotorInterface {
public:

	enum OperationMode { //測定か運転か
		Measure = -1,
		Drive = 1,
	};

	enum ControlMode { //強制転流、FOCなどの動作モード管理
		OpenLoop = 1,
		OpenLoopToFOC,
		FOC,
	};

private:
	MotorInfo mMotorInfo;
	Observer mObserver;

	PID mIdPID, mIqPID;
	PID mIganmaPID, mIdeltaPID;

	PID mVelocityPID;

	ArgCtrl mArgCtrl;

	OperationMode mOperationMode;
	ControlMode mControlMode;

	UIStatus mUIStatus;
	DebugCtrl mDebugCtrl;

public:
	MotorCtrl();
	virtual ~MotorCtrl();

	void InitSystem(void);
	void DeInitSystem(void);
	void InitMotorControl(void);
	void InitObserver(void);

	void HighFreqTask(void);

	//void MotorMeasure(void);
	void MotorDrive(void);
	//MotorDrive内呼び出し関数
	void ReadCurrentTask();
	void setIuvw(float pIu, float pIv, float pIw);
	void ReadVoltageTask();

	void ReadAngleTask(void);
	fp_rad GetAngleForOpenLoop();
	fp_rad GetAngleForFOC();

	void clarkTransform(void);
	void parkTransform(void);
	void parkGanmaDelta(void);
	void parkabtogd(void);

	void ObserverTask();

	void CurrentControlTask();
	std::array<float, 2> GetCurrentTarget();
	void CurrentFeedForwardTask();
	void CurrentPITask();
	std::array<float, 2> PIDgd_control(std::array<float, 2> pErrIgd);//どちらかが死にclassになるけど毎回呼ぶ作業でif文使いたくない。
	void setVgd(std::array<float, 2> pVgd);

	std::array<float, 2> getIdq(void);
	std::array<float, 2> getIgd(void);

	void invParkgdtoab(void);
	void invParkGanmaDelta(void);
	void invParkTransform(void);
	void invClarkTransform(void);
	void SVM(void);

	void VoltageOutputTask(void);

	void VelocityPIDTask();
	void GPIODebugTask();

	//Handler
	void ControlModeHandler();

	//UI
	void BtnAct(void);
	void BtnActOFF(void);
	void BtnActON(void);

private:
	int mlogcount = 0;
	int mTransitionCountForOpenToFOC = 0;
	int mTransitionCountForOpenToFOC2 = 0;

	int mFOCcount=0;
};

#endif /* MOTORCTRL_HPP_ */
