.class Lcom/openx/model/video/AdVideoDialog$2;
.super Ljava/lang/Object;
.source "AdVideoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/AdVideoDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/AdVideoDialog;


# direct methods
.method constructor <init>(Lcom/openx/model/video/AdVideoDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/openx/model/video/AdVideoDialog$2;->this$0:Lcom/openx/model/video/AdVideoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog$2;->this$0:Lcom/openx/model/video/AdVideoDialog;

    iget-object v0, v0, Lcom/openx/model/video/AdVideoDialog;->adEventsListener:Lcom/openx/view/AdEventsListener;

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 115
    return-void
.end method
