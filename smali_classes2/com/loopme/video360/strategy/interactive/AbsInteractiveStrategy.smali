.class public abstract Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;
.super Ljava/lang/Object;
.source "AbsInteractiveStrategy.java"

# interfaces
.implements Lcom/loopme/video360/strategy/IModeStrategy;
.implements Lcom/loopme/video360/strategy/interactive/IInteractiveMode;


# instance fields
.field private mDirectorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;->mDirectorList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method protected getDirectorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;->mDirectorList:Ljava/util/List;

    return-object v0
.end method
