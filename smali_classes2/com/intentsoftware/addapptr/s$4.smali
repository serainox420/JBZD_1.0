.class Lcom/intentsoftware/addapptr/s$4;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/s;->createFallbackDismissListener()Lcom/intentsoftware/addapptr/n;
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
    .line 296
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s$4;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissed()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$4;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/s;->access$300(Lcom/intentsoftware/addapptr/s;)V

    .line 300
    return-void
.end method
