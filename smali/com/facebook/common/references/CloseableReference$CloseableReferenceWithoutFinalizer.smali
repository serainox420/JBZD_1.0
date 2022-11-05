.class Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;
.super Lcom/facebook/common/references/CloseableReference;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseableReferenceWithoutFinalizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/references/CloseableReference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final REF_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/facebook/common/references/CloseableReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDestructor:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 399
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 402
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$1;

    invoke-direct {v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$1;-><init>()V

    const-string v2, "CloseableReferenceDestructorThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 415
    return-void
.end method

.method private constructor <init>(Lcom/facebook/common/references/SharedReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/references/CloseableReference;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 421
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    sget-object v1, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;-><init>(Lcom/facebook/common/references/CloseableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->mDestructor:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;-><init>(Lcom/facebook/common/references/SharedReference;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/ResourceReleaser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/common/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 426
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    sget-object v1, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;-><init>(Lcom/facebook/common/references/CloseableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->mDestructor:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->mDestructor:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->destroy(Z)V

    .line 432
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;->mDestructor:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
