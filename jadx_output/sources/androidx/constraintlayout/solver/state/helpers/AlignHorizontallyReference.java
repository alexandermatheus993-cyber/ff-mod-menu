package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
public class AlignHorizontallyReference extends HelperReference {
    private float mBias;
    private Object mEndToEnd;
    private Object mEndToStart;
    private Object mStartToEnd;
    private Object mStartToStart;

    public AlignHorizontallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.mBias = 0.5f;
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it.next());
            constraintReferenceConstraints.clearHorizontal();
            if (this.mStartToStart != null) {
                constraintReferenceConstraints.startToStart(this.mStartToStart);
            } else if (this.mStartToEnd != null) {
                constraintReferenceConstraints.startToEnd(this.mStartToEnd);
            } else {
                constraintReferenceConstraints.startToStart(State.PARENT);
            }
            if (this.mEndToStart != null) {
                constraintReferenceConstraints.endToStart(this.mEndToStart);
            } else if (this.mEndToEnd != null) {
                constraintReferenceConstraints.endToEnd(this.mEndToEnd);
            } else {
                constraintReferenceConstraints.endToEnd(State.PARENT);
            }
            if (this.mBias != 0.5f) {
                constraintReferenceConstraints.horizontalBias(this.mBias);
            }
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

    public void bias(float f) {
        this.mBias = f;
    }
}
