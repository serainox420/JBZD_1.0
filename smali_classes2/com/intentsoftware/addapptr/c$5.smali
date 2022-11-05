.class Lcom/intentsoftware/addapptr/c$5;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->showDebugDialogInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$5;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$5;->this$0:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c;->access$402(Lcom/intentsoftware/addapptr/c;Z)Z

    .line 512
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$5;->this$0:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c;->access$602(Lcom/intentsoftware/addapptr/c;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 513
    return-void
.end method
