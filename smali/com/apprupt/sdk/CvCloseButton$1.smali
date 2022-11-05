.class Lcom/apprupt/sdk/CvCloseButton$1;
.super Ljava/lang/Object;
.source "CvCloseButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvCloseButton;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvCloseButton;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvCloseButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/apprupt/sdk/CvCloseButton$1;->a:Lcom/apprupt/sdk/CvCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton$1;->a:Lcom/apprupt/sdk/CvCloseButton;

    invoke-static {v0}, Lcom/apprupt/sdk/CvCloseButton;->b(Lcom/apprupt/sdk/CvCloseButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvCloseButton$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvCloseButton$1$1;-><init>(Lcom/apprupt/sdk/CvCloseButton$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method
