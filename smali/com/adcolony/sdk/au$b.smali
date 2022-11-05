.class Lcom/adcolony/sdk/au$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:D

.field b:D


# direct methods
.method constructor <init>(D)V
    .locals 3

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/adcolony/sdk/au$b;->b:D

    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/adcolony/sdk/au$b;->a(D)V

    .line 404
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/adcolony/sdk/au$b;->a:D

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/au$b;->a(D)V

    .line 409
    return-void
.end method

.method a(D)V
    .locals 5

    .prologue
    .line 413
    iput-wide p1, p0, Lcom/adcolony/sdk/au$b;->a:D

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/adcolony/sdk/au$b;->a:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/au$b;->b:D

    .line 415
    return-void
.end method

.method b()Z
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/adcolony/sdk/au$b;->c()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()D
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 425
    iget-wide v4, p0, Lcom/adcolony/sdk/au$b;->b:D

    sub-double v2, v4, v2

    .line 426
    cmpg-double v4, v2, v0

    if-gtz v4, :cond_0

    .line 430
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/adcolony/sdk/au$b;->c()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/au;->a(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
