.class public Lcom/android/systemui_ex/DessertCaseDream;
.super Landroid/service/dreams/DreamService;
.source "DessertCaseDream.java"


# instance fields
.field private mContainer:Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;

.field private mView:Lcom/android/systemui_ex/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/DessertCaseDream;)Lcom/android/systemui_ex/DessertCaseView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/DessertCaseDream;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mView:Lcom/android/systemui_ex/DessertCaseView;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/DessertCaseDream;->setInteractive(Z)V

    .line 30
    new-instance v0, Lcom/android/systemui_ex/DessertCaseView;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mView:Lcom/android/systemui_ex/DessertCaseView;

    .line 32
    new-instance v0, Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mContainer:Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;

    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mContainer:Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;

    iget-object v1, p0, Lcom/android/systemui_ex/DessertCaseDream;->mView:Lcom/android/systemui_ex/DessertCaseView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui_ex/DessertCaseView;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mContainer:Lcom/android/systemui_ex/DessertCaseView$RescalingContainer;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/DessertCaseDream;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public onDreamingStarted()V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 42
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mView:Lcom/android/systemui_ex/DessertCaseView;

    new-instance v1, Lcom/android/systemui_ex/DessertCaseDream$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/DessertCaseDream$1;-><init>(Lcom/android/systemui_ex/DessertCaseDream;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCaseDream;->mView:Lcom/android/systemui_ex/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/DessertCaseView;->stop()V

    .line 53
    return-void
.end method