.class public Lio/realm/internal/SharedRealm$b;
.super Ljava/lang/Object;
.source "SharedRealm.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/SharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/realm/internal/SharedRealm$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-wide p1, p0, Lio/realm/internal/SharedRealm$b;->a:J

    .line 124
    iput-wide p3, p0, Lio/realm/internal/SharedRealm$b;->b:J

    .line 125
    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/SharedRealm$b;)I
    .locals 4

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version cannot be compared to a null value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/SharedRealm$b;->a:J

    iget-wide v2, p1, Lio/realm/internal/SharedRealm$b;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm$b;->a:J

    iget-wide v2, p1, Lio/realm/internal/SharedRealm$b;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 135
    const/4 v0, -0x1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 118
    check-cast p1, Lio/realm/internal/SharedRealm$b;

    invoke-virtual {p0, p1}, Lio/realm/internal/SharedRealm$b;->a(Lio/realm/internal/SharedRealm$b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_3
    check-cast p1, Lio/realm/internal/SharedRealm$b;

    .line 159
    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->a:J

    iget-wide v4, p1, Lio/realm/internal/SharedRealm$b;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->b:J

    iget-wide v4, p1, Lio/realm/internal/SharedRealm$b;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 164
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->a:J

    iget-wide v4, p0, Lio/realm/internal/SharedRealm$b;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->b:J

    iget-wide v4, p0, Lio/realm/internal/SharedRealm$b;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 167
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionID{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/internal/SharedRealm$b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
