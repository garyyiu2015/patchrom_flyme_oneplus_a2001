.class Lcom/oneplus/camera/ui/OptionsPanelImpl$6;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/media/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/Resolution;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionChanged(Lcom/oneplus/camera/media/Resolution;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$200(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/media/Resolution;)V

    .line 235
    return-void
.end method
