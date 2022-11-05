.class public Lio/realm/e;
.super Lio/realm/u;
.source "DynamicRealmObject.java"

# interfaces
.implements Lio/realm/internal/l;


# instance fields
.field private final a:Lio/realm/k;


# direct methods
.method constructor <init>(Lio/realm/b;Lio/realm/internal/n;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    .line 38
    new-instance v0, Lio/realm/k;

    invoke-direct {v0, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    .line 73
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0, p1}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 74
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0, p2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 75
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 76
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 911
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 397
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 399
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getColumnCount()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 400
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 401
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lio/realm/internal/n;->getColumnName(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-object v1
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 759
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-static {v0}, Lio/realm/RealmSchema;->a(Lio/realm/internal/Table;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 820
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->e()V

    .line 822
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 844
    :cond_0
    :goto_0
    return v1

    .line 825
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 829
    check-cast p1, Lio/realm/e;

    .line 831
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 832
    iget-object v3, p1, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 833
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    :cond_2
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 838
    iget-object v3, p1, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 840
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    :cond_3
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 833
    :cond_4
    if-eqz v3, :cond_2

    goto :goto_0

    .line 840
    :cond_5
    if-eqz v3, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 844
    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 805
    iget-object v1, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->e()V

    .line 807
    iget-object v1, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 808
    iget-object v2, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 809
    iget-object v3, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 812
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 813
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 814
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 815
    return v0

    :cond_1
    move v1, v0

    .line 812
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 851
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    const-string v0, "Invalid object"

    .line 905
    :goto_0
    return-object v0

    .line 855
    :cond_0
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lio/realm/e;->b()[Ljava/lang/String;

    move-result-object v4

    .line 858
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_7

    aget-object v0, v4, v1

    .line 859
    iget-object v6, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v6}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v6

    invoke-interface {v6, v0}, Lio/realm/internal/n;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    .line 860
    iget-object v8, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v8}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lio/realm/internal/n;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v8

    .line 861
    const-string v9, "{"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget-object v0, Lio/realm/e$1;->a:[I

    invoke-virtual {v8}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 898
    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :goto_2
    const-string v0, "}, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 865
    :pswitch_0
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 868
    :pswitch_1
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "null"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 871
    :pswitch_2
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "null"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getFloat(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_5

    .line 874
    :pswitch_3
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "null"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    .line 877
    :pswitch_4
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 880
    :pswitch_5
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getBinaryByteArray(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 883
    :pswitch_6
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "null"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_7

    .line 886
    :pswitch_7
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/n;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "null"

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    .line 888
    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 891
    :pswitch_8
    iget-object v0, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {v0}, Lio/realm/internal/Table;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string v8, "RealmList<%s>[%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    iget-object v10, p0, Lio/realm/e;->a:Lio/realm/k;

    invoke-virtual {v10}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v10

    invoke-interface {v10, v6, v7}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/LinkView;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 903
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
