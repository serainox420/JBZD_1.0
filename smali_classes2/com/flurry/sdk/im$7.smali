.class final Lcom/flurry/sdk/im$7;
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
        "Lcom/flurry/sdk/ik;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/flurry/sdk/im$7;->a:Lcom/flurry/sdk/im;

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
            "Lcom/flurry/sdk/ik;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/flurry/sdk/ik$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ik$a;-><init>()V

    return-object v0
.end method
