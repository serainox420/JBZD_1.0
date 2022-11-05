.class Lcom/intentsoftware/addapptr/w$1;
.super Ljava/lang/Object;
.source "PromoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/w;->enablePromo(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/w;

.field final synthetic val$onlyOnActivityChange:Z


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/w;Z)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intentsoftware/addapptr/w$1;->this$0:Lcom/intentsoftware/addapptr/w;

    iput-boolean p2, p0, Lcom/intentsoftware/addapptr/w$1;->val$onlyOnActivityChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w$1;->this$0:Lcom/intentsoftware/addapptr/w;

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/w$1;->val$onlyOnActivityChange:Z

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/w;->access$000(Lcom/intentsoftware/addapptr/w;Z)V

    .line 59
    return-void
.end method
