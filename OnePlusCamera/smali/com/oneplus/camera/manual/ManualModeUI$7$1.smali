.class Lcom/oneplus/camera/manual/ManualModeUI$7$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI$7;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/manual/ManualModeUI$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$7;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$7$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/graphics/RectF;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$7;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # invokes: Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$800(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$7;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # invokes: Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$900(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 535
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$7;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # invokes: Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$1000(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 537
    :cond_0
    return-void
.end method