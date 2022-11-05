.class public Lio/realm/internal/e;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# instance fields
.field private a:[J

.field private b:Lio/realm/RealmFieldType;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lio/realm/internal/Table;Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty field name must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal field name. It cannot start or end with a \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    array-length v0, v1

    new-array v2, v0, [J

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 45
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 46
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid field name: \'%s\' does not refer to a class."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    .line 48
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_4
    invoke-virtual {p1, v4, v5}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 51
    if-nez p3, :cond_5

    sget-object v6, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne v3, v6, :cond_5

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'RealmObject\' field \'%s\' is not a supported link field here."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    .line 53
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_5
    if-nez p4, :cond_6

    sget-object v6, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v3, v6, :cond_6

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'RealmList\' field \'%s\' is not a supported link field here."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    .line 56
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_6
    sget-object v6, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v3, v6, :cond_7

    sget-object v6, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v3, v6, :cond_8

    .line 58
    :cond_7
    invoke-virtual {p1, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object p1

    .line 59
    aput-wide v4, v2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid field name: \'%s\' does not refer to a class."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    .line 62
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_9
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 68
    invoke-virtual {p1, v0}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 69
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-wide v4, v2, v1

    .line 70
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'%s\' is not a field name in class \'%s\'."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_a
    invoke-virtual {p1, v4, v5}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v1

    iput-object v1, p0, Lio/realm/internal/e;->b:Lio/realm/RealmFieldType;

    .line 76
    iput-object v0, p0, Lio/realm/internal/e;->c:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lio/realm/internal/e;->a:[J

    .line 78
    invoke-virtual {p1, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/e;->d:Z

    .line 89
    :goto_1
    return-void

    .line 80
    :cond_b
    invoke-virtual {p1, p2}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 81
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field \'%s\' does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_c
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v2

    iput-object v2, p0, Lio/realm/internal/e;->b:Lio/realm/RealmFieldType;

    .line 85
    iput-object p2, p0, Lio/realm/internal/e;->c:Ljava/lang/String;

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    iput-object v2, p0, Lio/realm/internal/e;->a:[J

    .line 87
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->j(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/e;->d:Z

    goto :goto_1
.end method


# virtual methods
.method public a()[J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lio/realm/internal/e;->a:[J

    iget-object v1, p0, Lio/realm/internal/e;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/realm/RealmFieldType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/realm/internal/e;->b:Lio/realm/RealmFieldType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lio/realm/internal/e;->c:Ljava/lang/String;

    return-object v0
.end method
