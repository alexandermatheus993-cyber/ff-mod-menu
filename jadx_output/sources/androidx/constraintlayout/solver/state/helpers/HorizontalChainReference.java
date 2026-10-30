package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
public class HorizontalChainReference extends ChainReference {
    private Object mEndToEnd;
    private Object mEndToStart;
    private Object mStartToEnd;
    private Object mStartToStart;

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearHorizontal();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        while (it2.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it2.next());
            if (constraintReference == null) {
                constraintReference = constraintReferenceConstraints;
                if (this.mStartToStart != null) {
                    constraintReference.startToStart(this.mStartToStart);
                } else if (this.mStartToEnd != null) {
                    constraintReference.startToEnd(this.mStartToEnd);
                } else {
                    constraintReference.startToStart(State.PARENT);
                }
            }
            if (constraintReference2 != null) {
                constraintReference2.endToStart(constraintReferenceConstraints.getKey());
                constraintReferenceConstraints.startToEnd(constraintReference2.getKey());
            }
            constraintReference2 = constraintReferenceConstraints;
        }
        if (constraintReference2 != null) {
            if (this.mEndToStart != null) {
                constraintReference2.endToStart(this.mEndToStart);
            } else if (this.mEndToEnd != null) {
                constraintReference2.endToEnd(this.mEndToEnd);
            } else {
                constraintReference2.endToEnd(State.PARENT);
            }
        }
        if (constraintReference != null && this.mBias != 0.5f) {
            constraintReference.horizontalBias(this.mBias);
        }
        switch (this.mStyle) {
            case SPREAD:
                constraintReference.setHorizontalChainStyle(0);
                break;
            case SPREAD_INSIDE:
                constraintReference.setHorizontalChainStyle(1);
                break;
            case PACKED:
                constraintReference.setHorizontalChainStyle(2);
                break;
        }
    }

    public void startToStart(Object obj) {
        this.mStartToStart = obj;
    }

    public void startToEnd(Object obj) {
        this.mStartToEnd = obj;
    }

    public void endToStart(Object obj) {
        this.mEndToStart = obj;
    }

    public void endToEnd(Object obj) {
        this.mEndToEnd = obj;
    }
}
