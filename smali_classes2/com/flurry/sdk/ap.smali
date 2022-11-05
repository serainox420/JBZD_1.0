.class public final Lcom/flurry/sdk/ap;
.super Lcom/flurry/sdk/aq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/aq;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lg",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/lg;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/lg",
            "<TObjectType;>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p2, p3, p4}, Lcom/flurry/sdk/aq;-><init>(Ljava/lang/String;J)V

    .line 29
    iput-object p1, p0, Lcom/flurry/sdk/ap;->b:Lcom/flurry/sdk/lg;

    .line 30
    return-void
.end method
