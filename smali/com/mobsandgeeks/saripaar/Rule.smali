.class public abstract Lcom/mobsandgeeks/saripaar/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VA",
        "LIDATABLE:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mSequence:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/mobsandgeeks/saripaar/Rule;->mSequence:I

    .line 39
    return-void
.end method


# virtual methods
.method public abstract getMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public final getSequence()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mobsandgeeks/saripaar/Rule;->mSequence:I

    return v0
.end method

.method public abstract isValid(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVA",
            "LIDATABLE;",
            ")Z"
        }
    .end annotation
.end method
