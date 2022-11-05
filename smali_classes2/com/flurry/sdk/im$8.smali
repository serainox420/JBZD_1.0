.class final Lcom/flurry/sdk/im$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/im;-><init>()V
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
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/it;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/flurry/sdk/im$8;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/it;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/it$a;

    invoke-direct {v1}, Lcom/flurry/sdk/it$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    return-object v0
.end method
