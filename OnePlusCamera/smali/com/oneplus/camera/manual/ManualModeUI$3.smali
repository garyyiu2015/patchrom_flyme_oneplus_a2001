.class Lcom/oneplus/camera/manual/ManualModeUI$3;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/FlashController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$3;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 486
    check-cast p1, Lcom/oneplus/camera/FlashController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$3;->onComponentFound(Lcom/oneplus/camera/FlashController;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/FlashController;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/FlashController;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$3;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # setter for: Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->access$302(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;

    .line 491
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$3;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # invokes: Lcom/oneplus/camera/manual/ManualModeUI;->retryToEnter()V
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$100(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 492
    return-void
.end method