.class Lcom/intentsoftware/addapptr/j$1;
.super Ljava/lang/Object;
.source "BannerPlacement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/j;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/j;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/j;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/intentsoftware/addapptr/j$1;->this$0:Lcom/intentsoftware/addapptr/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j$1;->this$0:Lcom/intentsoftware/addapptr/j;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/j;->reloadInternal()Z

    .line 52
    return-void
.end method
