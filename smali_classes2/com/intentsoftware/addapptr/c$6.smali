.class Lcom/intentsoftware/addapptr/c$6;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->onActivityResume(Landroid/app/Activity;)V
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
    .line 561
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$6;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$6;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$500(Lcom/intentsoftware/addapptr/c;)V

    .line 565
    return-void
.end method
