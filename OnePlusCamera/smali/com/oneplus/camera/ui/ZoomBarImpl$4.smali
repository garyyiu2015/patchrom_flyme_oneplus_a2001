.class Lcom/oneplus/camera/ui/ZoomBarImpl$4;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/media/MediaType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/MediaType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/MediaType;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->access$200(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->access$500(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V

    .line 184
    return-void
.end method