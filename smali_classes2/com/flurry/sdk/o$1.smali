.class final Lcom/flurry/sdk/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/o;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/o;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/o$1;->a:Lcom/flurry/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 47
    .line 1050
    iget-object v0, p0, Lcom/flurry/sdk/o$1;->a:Lcom/flurry/sdk/o;

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->q()V

    .line 1052
    iget-object v0, p0, Lcom/flurry/sdk/o$1;->a:Lcom/flurry/sdk/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/o;J)J

    .line 47
    return-void
.end method
