.class Lcom/android/systemui_ex/qs/QSFooter$Callback;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/qs/QSFooter;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSFooter$Callback;->this$0:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/qs/QSFooter;Lcom/android/systemui_ex/qs/QSFooter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/qs/QSFooter;
    .param p2, "x1"    # Lcom/android/systemui_ex/qs/QSFooter$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSFooter$Callback;-><init>(Lcom/android/systemui_ex/qs/QSFooter;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSFooter$Callback;->this$0:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSFooter;->refreshState()V

    .line 255
    return-void
.end method