.class final Lcom/flurry/sdk/ky$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lj",
        "<",
        "Lcom/flurry/sdk/kz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ky;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ky;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/sdk/ky$5;->a:Lcom/flurry/sdk/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lg",
            "<",
            "Lcom/flurry/sdk/kz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/flurry/sdk/kz$a;

    invoke-direct {v0}, Lcom/flurry/sdk/kz$a;-><init>()V

    return-object v0
.end method
