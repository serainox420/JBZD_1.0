.class Lcom/intentsoftware/addapptr/s$3;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/ad/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/s;->createAdInteractionListener()Lcom/intentsoftware/addapptr/ad/b;
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
    .line 271
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s$3;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$3;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdClick(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 286
    return-void
.end method

.method public onAdShown(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$3;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 276
    return-void
.end method

.method public onEmptyAdShown()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$3;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/s;->access$100(Lcom/intentsoftware/addapptr/s;)V

    .line 281
    return-void
.end method

.method public onIncentiveEarned()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$3;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/s;->access$200(Lcom/intentsoftware/addapptr/s;)V

    .line 291
    return-void
.end method
