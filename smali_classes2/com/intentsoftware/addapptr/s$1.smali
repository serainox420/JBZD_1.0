.class Lcom/intentsoftware/addapptr/s$1;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/s;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/s;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s$1;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$1;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->onNoConfigTimeoutAction()V

    .line 75
    return-void
.end method
