.class final Lcom/loopme/debugging/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/debugging/HttpUtils;->postDataToServer(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/loopme/debugging/HttpUtils$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/loopme/debugging/HttpUtils$1;->val$params:Ljava/util/Map;

    invoke-static {v0}, Lcom/loopme/debugging/HttpUtils;->access$000(Ljava/util/Map;)V

    .line 77
    return-void
.end method
