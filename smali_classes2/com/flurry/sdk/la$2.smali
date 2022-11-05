.class final Lcom/flurry/sdk/la$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/la;->e(Ljava/lang/String;)Z
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
.field final synthetic a:Lcom/flurry/sdk/la;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/la;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/flurry/sdk/la$2;->a:Lcom/flurry/sdk/la;

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
    .line 199
    new-instance v0, Lcom/flurry/sdk/kz$a;

    invoke-direct {v0}, Lcom/flurry/sdk/kz$a;-><init>()V

    return-object v0
.end method
