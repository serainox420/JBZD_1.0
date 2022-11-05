.class Lcom/intentsoftware/addapptr/a/b$1;
.super Ljava/lang/Object;
.source "ConfigDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/a/b;->onGetRequestResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/a/b;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b$1;->this$0:Lcom/intentsoftware/addapptr/a/b;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/a/b$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$1;->this$0:Lcom/intentsoftware/addapptr/a/b;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$1;->val$response:Ljava/lang/String;

    sget-object v2, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/a/b;->access$300(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    .line 243
    return-void
.end method
