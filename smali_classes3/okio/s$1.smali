.class final Lokio/s$1;
.super Lokio/s;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lokio/s;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lokio/s;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/s;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method
