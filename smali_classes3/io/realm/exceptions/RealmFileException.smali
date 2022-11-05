.class public Lio/realm/exceptions/RealmFileException;
.super Ljava/lang/RuntimeException;
.source "RealmFileException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/exceptions/RealmFileException$Kind;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private final kind:Lio/realm/exceptions/RealmFileException$Kind;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lio/realm/exceptions/RealmFileException$Kind;->getKind(B)Lio/realm/exceptions/RealmFileException$Kind;

    move-result-object v0

    iput-object v0, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    .line 92
    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    .line 97
    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    .line 107
    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    .line 102
    return-void
.end method


# virtual methods
.method public getKind()Lio/realm/exceptions/RealmFileException$Kind;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v0, "%s Kind: %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
