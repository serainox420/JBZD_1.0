.class Lcom/openx/view/mraid/methods/StorePicture$1$1;
.super Ljava/lang/Object;
.source "StorePicture.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/StorePicture$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/StorePicture$1;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/StorePicture$1;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/openx/view/mraid/methods/StorePicture$1$1;->this$1:Lcom/openx/view/mraid/methods/StorePicture$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/openx/view/mraid/methods/StorePicture$1$1$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/StorePicture$1$1$1;-><init>(Lcom/openx/view/mraid/methods/StorePicture$1$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method
