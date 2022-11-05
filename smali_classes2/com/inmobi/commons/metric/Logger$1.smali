.class Lcom/inmobi/commons/metric/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/metric/Logger;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/metric/Logger;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/inmobi/commons/metric/Logger$1;->a:Lcom/inmobi/commons/metric/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger$1;->a:Lcom/inmobi/commons/metric/Logger;

    invoke-static {v0}, Lcom/inmobi/commons/metric/Logger;->a(Lcom/inmobi/commons/metric/Logger;)Lcom/inmobi/commons/metric/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->sendFile()V

    .line 57
    return-void
.end method
