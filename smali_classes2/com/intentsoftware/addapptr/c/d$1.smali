.class Lcom/intentsoftware/addapptr/c/d$1;
.super Ljava/lang/Object;
.source "NativeAdViewImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c/d;-><init>(IILcom/intentsoftware/addapptr/c/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c/d;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c/d;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/d$1;->this$0:Lcom/intentsoftware/addapptr/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d$1;->this$0:Lcom/intentsoftware/addapptr/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/d;->access$002(Lcom/intentsoftware/addapptr/c/d;Z)Z

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d$1;->this$0:Lcom/intentsoftware/addapptr/c/d;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/d;->access$100(Lcom/intentsoftware/addapptr/c/d;)V

    .line 37
    return-void
.end method
