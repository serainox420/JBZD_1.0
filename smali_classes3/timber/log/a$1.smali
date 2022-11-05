.class final Ltimber/log/a$1;
.super Ltimber/log/a$a;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ltimber/log/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 237
    sget-object v1, Ltimber/log/a;->a:[Ltimber/log/a$a;

    .line 239
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 240
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Ltimber/log/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method
