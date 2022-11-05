.class Lcom/adcolony/sdk/cj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cj;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cj;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    iget v0, v0, Lcom/adcolony/sdk/cj;->d:I

    iget-object v1, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    iget v1, v1, Lcom/adcolony/sdk/cj;->b:I

    if-ne v0, v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    invoke-virtual {v2}, Lcom/adcolony/sdk/cj;->a()V

    .line 144
    iget-object v2, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    iput-wide v0, v2, Lcom/adcolony/sdk/cj;->j:J

    .line 145
    iget-object v0, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    iget-object v1, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    iget v1, v1, Lcom/adcolony/sdk/cj;->b:I

    iput v1, v0, Lcom/adcolony/sdk/cj;->d:I

    .line 148
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->o()I

    move-result v0

    int-to-long v0, v0

    .line 149
    iget-object v2, p0, Lcom/adcolony/sdk/cj$2;->a:Lcom/adcolony/sdk/cj;

    invoke-virtual {v2, v0, v1}, Lcom/adcolony/sdk/cj;->a(J)V

    goto :goto_0
.end method
