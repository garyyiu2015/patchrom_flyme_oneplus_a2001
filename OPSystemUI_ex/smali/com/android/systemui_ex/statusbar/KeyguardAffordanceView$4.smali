.class Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$4;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$4;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->access$302(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 100
    return-void
.end method