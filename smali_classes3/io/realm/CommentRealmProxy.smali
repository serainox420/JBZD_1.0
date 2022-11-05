.class public Lio/realm/CommentRealmProxy;
.super Lpl/jbzd/app/model/Comment;
.source "CommentRealmProxy.java"

# interfaces
.implements Lio/realm/c;
.implements Lio/realm/internal/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/CommentRealmProxy$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lio/realm/CommentRealmProxy$a;

.field private b:Lio/realm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/k",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/realm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v1, "media_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v1, "parent_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, "plus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "minus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "reports"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "created_at"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "voted"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "replies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/CommentRealmProxy;->d:Ljava/util/List;

    .line 119
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lpl/jbzd/app/model/Comment;-><init>()V

    .line 122
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 123
    return-void
.end method

.method public static a(Lio/realm/internal/SharedRealm;Z)Lio/realm/CommentRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0xb

    .line 487
    const-string v0, "class_Comment"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 488
    const-string v0, "class_Comment"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Lio/realm/internal/Table;->b()J

    move-result-wide v4

    .line 490
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 491
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 492
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is less than expected - expected 11 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    if-eqz p1, :cond_2

    .line 495
    const-string v0, "Field count is more than expected - expected 11 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 501
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 502
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 497
    :cond_2
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is more than expected - expected 11 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_3
    new-instance v0, Lio/realm/CommentRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/CommentRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 507
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 508
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/CommentRealmProxy$a;->a:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 511
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary Key annotation definition was changed, from field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to field id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_5
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 516
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_6
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 519
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_7
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_8
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 525
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_9
    const-string v1, "media_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 528
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'media_id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_a
    const-string v1, "media_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 531
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'media_id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_b
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 534
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'media_id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'media_id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_c
    const-string v1, "parent_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 537
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'parent_id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_d
    const-string v1, "parent_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 540
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'parent_id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_e
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 543
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'parent_id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'parent_id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_f
    const-string v1, "comment"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 546
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'comment\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_10
    const-string v1, "comment"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 549
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'comment\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_11
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 552
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'comment\' is required. Either set @Required to field \'comment\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_12
    const-string v1, "plus"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 555
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'plus\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_13
    const-string v1, "plus"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 558
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'plus\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_14
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 561
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'plus\' does support null values in the existing Realm file. Use corresponding boxed type for field \'plus\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_15
    const-string v1, "minus"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 564
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'minus\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_16
    const-string v1, "minus"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 567
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'minus\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_17
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 570
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'minus\' does support null values in the existing Realm file. Use corresponding boxed type for field \'minus\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_18
    const-string v1, "reports"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 573
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'reports\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_19
    const-string v1, "reports"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 576
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'reports\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1a
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 579
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'reports\' does support null values in the existing Realm file. Use corresponding boxed type for field \'reports\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1b
    const-string v1, "created_at"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 582
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'created_at\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1c
    const-string v1, "created_at"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 585
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'created_at\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1d
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 588
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'created_at\' is required. Either set @Required to field \'created_at\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1e
    const-string v1, "user"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 591
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'user\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1f
    const-string v1, "user"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 594
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'User\' for field \'user\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_20
    const-string v1, "class_User"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 597
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_User\' for field \'user\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_21
    const-string v1, "class_User"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 600
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 601
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmObject for field \'user\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 603
    :cond_22
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 604
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'voted\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_23
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_24

    .line 607
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'voted\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_24
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 610
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'voted\' does support null values in the existing Realm file. Use corresponding boxed type for field \'voted\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_25
    const-string v1, "replies"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 613
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'replies\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_26
    const-string v1, "replies"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_27

    .line 616
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Comment\' for field \'replies\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_27
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 619
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_Comment\' for field \'replies\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_28
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 622
    iget-wide v4, v0, Lio/realm/CommentRealmProxy$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 623
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmList type for field \'replies\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/CommentRealmProxy$a;->k:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 627
    :cond_29
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Comment\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2a
    return-object v0
.end method

.method public static a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 435
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 437
    new-instance v0, Lio/realm/Property;

    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 438
    new-instance v4, Lio/realm/Property;

    const-string v5, "media_id"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 439
    new-instance v4, Lio/realm/Property;

    const-string v5, "parent_id"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 440
    new-instance v4, Lio/realm/Property;

    const-string v5, "comment"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 441
    new-instance v4, Lio/realm/Property;

    const-string v5, "plus"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 442
    new-instance v4, Lio/realm/Property;

    const-string v5, "minus"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 443
    new-instance v4, Lio/realm/Property;

    const-string v5, "reports"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 444
    new-instance v4, Lio/realm/Property;

    const-string v5, "created_at"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 445
    const-string v0, "User"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {p0}, Lio/realm/UserRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 448
    :cond_0
    new-instance v0, Lio/realm/Property;

    const-string v1, "user"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v4, "User"

    invoke-virtual {p0, v4}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 449
    new-instance v4, Lio/realm/Property;

    const-string v5, "voted"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 450
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    invoke-static {p0}, Lio/realm/CommentRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 453
    :cond_1
    new-instance v0, Lio/realm/Property;

    const-string v1, "replies"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "Comment"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 456
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 460
    const-string v0, "class_Comment"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    const-string v0, "class_Comment"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 462
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 463
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "media_id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 464
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "parent_id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 465
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 466
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 467
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "minus"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 468
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "reports"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 469
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "created_at"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 470
    const-string v1, "class_User"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-static {p0}, Lio/realm/UserRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 473
    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v2, "user"

    const-string v3, "class_User"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 474
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "voted"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 475
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    invoke-static {p0}, Lio/realm/CommentRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 478
    :cond_1
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "replies"

    const-string v3, "class_Comment"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 479
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 480
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 483
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "class_Comment"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/realm/l;Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;Ljava/util/Map;)Lpl/jbzd/app/model/Comment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Comment;",
            "Lpl/jbzd/app/model/Comment;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Comment;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1262
    move-object v0, p1

    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$media_id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$media_id(I)V

    move-object v0, p1

    .line 1263
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$parent_id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$parent_id(I)V

    move-object v0, p1

    .line 1264
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$comment(Ljava/lang/String;)V

    move-object v0, p1

    .line 1265
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$plus()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$plus(I)V

    move-object v0, p1

    .line 1266
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$minus()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$minus(I)V

    move-object v0, p1

    .line 1267
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$reports()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$reports(I)V

    move-object v0, p1

    .line 1268
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$created_at()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$created_at(Ljava/util/Date;)V

    move-object v0, p2

    .line 1269
    check-cast v0, Lio/realm/c;

    invoke-interface {v0}, Lio/realm/c;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v1

    .line 1270
    if-eqz v1, :cond_1

    .line 1271
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    .line 1272
    if-eqz v0, :cond_0

    move-object v1, p1

    .line 1273
    check-cast v1, Lio/realm/c;

    invoke-interface {v1, v0}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    :goto_0
    move-object v0, p1

    .line 1280
    check-cast v0, Lio/realm/c;

    move-object v1, p2

    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$voted()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$voted(I)V

    .line 1281
    check-cast p2, Lio/realm/c;

    invoke-interface {p2}, Lio/realm/c;->realmGet$replies()Lio/realm/q;

    move-result-object v2

    move-object v0, p1

    .line 1282
    check-cast v0, Lio/realm/c;

    invoke-interface {v0}, Lio/realm/c;->realmGet$replies()Lio/realm/q;

    move-result-object v3

    .line 1283
    invoke-virtual {v3}, Lio/realm/q;->clear()V

    .line 1284
    if-eqz v2, :cond_3

    .line 1285
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lio/realm/q;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1286
    invoke-virtual {v2, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 1287
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 1288
    if-eqz v0, :cond_2

    .line 1289
    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 1285
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 1275
    check-cast v0, Lio/realm/c;

    invoke-static {p0, v1, v4, p3}, Lio/realm/UserRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1278
    check-cast v0, Lio/realm/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    goto :goto_0

    .line 1291
    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-static {p0, v0, v4, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_2

    .line 1295
    :cond_3
    return-object p1
.end method

.method public static a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Comment;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Comment;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 874
    instance-of v2, p1, Lio/realm/internal/l;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    iget-wide v2, v2, Lio/realm/b;->c:J

    iget-wide v6, p0, Lio/realm/l;->c:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 875
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 877
    :cond_0
    instance-of v2, p1, Lio/realm/internal/l;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    :goto_0
    return-object p1

    .line 880
    :cond_1
    sget-object v2, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v2}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/b$b;

    .line 881
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/l;

    .line 882
    if-eqz v3, :cond_2

    .line 883
    check-cast v3, Lpl/jbzd/app/model/Comment;

    move-object p1, v3

    goto :goto_0

    .line 885
    :cond_2
    const/4 v5, 0x0

    .line 887
    if-eqz p2, :cond_5

    .line 888
    const-class v3, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p0, v3}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 889
    invoke-virtual {v6}, Lio/realm/internal/Table;->c()J

    move-result-wide v8

    move-object v3, p1

    .line 890
    check-cast v3, Lio/realm/c;

    invoke-interface {v3}, Lio/realm/c;->realmGet$id()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v6, v8, v9, v10, v11}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v8

    .line 891
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 893
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/l;->f:Lio/realm/RealmSchema;

    const-class v5, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 894
    new-instance v4, Lio/realm/CommentRealmProxy;

    invoke-direct {v4}, Lio/realm/CommentRealmProxy;-><init>()V

    .line 895
    move-object v0, v4

    check-cast v0, Lio/realm/internal/l;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    move v2, p2

    .line 904
    :goto_1
    if-eqz v2, :cond_4

    .line 905
    invoke-static {p0, v4, p1, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;Ljava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object p1

    goto :goto_0

    .line 897
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 900
    goto :goto_1

    .line 907
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/CommentRealmProxy;->b(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v2, p2

    move-object v4, v5

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const-string v0, "class_Comment"

    return-object v0
.end method

.method public static b(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Comment;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Comment;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 913
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 914
    if-eqz v0, :cond_1

    .line 915
    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 955
    :cond_0
    return-object v0

    .line 918
    :cond_1
    const-class v1, Lpl/jbzd/app/model/Comment;

    move-object v0, p1

    check-cast v0, Lio/realm/c;

    invoke-interface {v0}, Lio/realm/c;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lio/realm/l;->a(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    move-object v1, v0

    .line 919
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 920
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$media_id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$media_id(I)V

    move-object v1, v0

    .line 921
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$parent_id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$parent_id(I)V

    move-object v1, v0

    .line 922
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$comment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$comment(Ljava/lang/String;)V

    move-object v1, v0

    .line 923
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$plus()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$plus(I)V

    move-object v1, v0

    .line 924
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$minus()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$minus(I)V

    move-object v1, v0

    .line 925
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$reports()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$reports(I)V

    move-object v1, v0

    .line 926
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$created_at()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$created_at(Ljava/util/Date;)V

    move-object v1, p1

    .line 928
    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v2

    .line 929
    if-eqz v2, :cond_3

    .line 930
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/User;

    .line 931
    if-eqz v1, :cond_2

    move-object v2, v0

    .line 932
    check-cast v2, Lio/realm/c;

    invoke-interface {v2, v1}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    :goto_0
    move-object v1, v0

    .line 939
    check-cast v1, Lio/realm/c;

    move-object v2, p1

    check-cast v2, Lio/realm/c;

    invoke-interface {v2}, Lio/realm/c;->realmGet$voted()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$voted(I)V

    .line 941
    check-cast p1, Lio/realm/c;

    invoke-interface {p1}, Lio/realm/c;->realmGet$replies()Lio/realm/q;

    move-result-object v4

    .line 942
    if-eqz v4, :cond_0

    move-object v1, v0

    .line 943
    check-cast v1, Lio/realm/c;

    invoke-interface {v1}, Lio/realm/c;->realmGet$replies()Lio/realm/q;

    move-result-object v5

    move v2, v3

    .line 944
    :goto_1
    invoke-virtual {v4}, Lio/realm/q;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 945
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 946
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 947
    if-eqz v1, :cond_4

    .line 948
    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 944
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 934
    check-cast v1, Lio/realm/c;

    invoke-static {p0, v2, p2, p3}, Lio/realm/UserRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 937
    check-cast v1, Lio/realm/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/realm/c;->realmSet$user(Lpl/jbzd/app/model/User;)V

    goto :goto_0

    .line 950
    :cond_4
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    invoke-static {p0, v1, p2, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v0}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/b$b;

    .line 131
    invoke-virtual {v0}, Lio/realm/b$b;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/CommentRealmProxy$a;

    iput-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    .line 132
    new-instance v1, Lio/realm/k;

    invoke-direct {v1, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    .line 133
    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 134
    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 135
    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Z)V

    .line 136
    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1318
    if-ne p0, p1, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return v0

    .line 1319
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1320
    :cond_3
    check-cast p1, Lio/realm/CommentRealmProxy;

    .line 1322
    iget-object v2, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 1323
    iget-object v3, p1, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 1324
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1326
    :cond_6
    iget-object v2, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1327
    iget-object v3, p1, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 1328
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1330
    :cond_9
    iget-object v2, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1305
    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1306
    iget-object v2, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1307
    iget-object v3, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 1310
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1311
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1312
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1313
    return v0

    :cond_1
    move v1, v0

    .line 1310
    goto :goto_0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 198
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$created_at()Ljava/util/Date;
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 286
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$id()I
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 142
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$media_id()I
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 158
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$minus()I
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 246
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$parent_id()I
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 178
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$plus()I
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 226
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$replies()Lio/realm/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 386
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->c:Lio/realm/q;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->c:Lio/realm/q;

    .line 391
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 390
    new-instance v1, Lio/realm/q;

    const-class v2, Lpl/jbzd/app/model/Comment;

    iget-object v3, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/q;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/b;)V

    iput-object v1, p0, Lio/realm/CommentRealmProxy;->c:Lio/realm/q;

    .line 391
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->c:Lio/realm/q;

    goto :goto_0
.end method

.method public realmGet$reports()I
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 266
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$user()Lpl/jbzd/app/model/User;
    .locals 6

    .prologue
    .line 315
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 316
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/model/User;

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    iget-object v3, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v4, v3, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-interface {v2, v4, v5}, Lio/realm/internal/n;->getLink(J)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lio/realm/b;->a(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    goto :goto_0
.end method

.method public realmGet$voted()I
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 366
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 202
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 207
    if-nez p1, :cond_1

    .line 208
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v0, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v1, v1, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 216
    if-nez p1, :cond_3

    .line 217
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$created_at(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 293
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 298
    if-nez p1, :cond_1

    .line 299
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v0, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v1, v1, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 307
    if-nez p1, :cond_3

    .line 308
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$id(I)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 152
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$media_id(I)V
    .locals 9

    .prologue
    .line 162
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->b:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 172
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->b:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$minus(I)V
    .locals 9

    .prologue
    .line 250
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 260
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->f:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$parent_id(I)V
    .locals 9

    .prologue
    .line 182
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->c:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 192
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->c:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$plus(I)V
    .locals 9

    .prologue
    .line 230
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->e:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 240
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->e:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$replies(Lio/realm/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "replies"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/realm/q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 404
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/l;

    .line 406
    new-instance v2, Lio/realm/q;

    invoke-direct {v2}, Lio/realm/q;-><init>()V

    .line 407
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 408
    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 417
    :cond_5
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 418
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->a()V

    .line 420
    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 424
    invoke-static {v0}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 425
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    .line 427
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {v1}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    iget-object v4, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v4

    if-eq v1, v4, :cond_8

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_8
    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/LinkView;->b(J)V

    goto :goto_1
.end method

.method public realmSet$reports(I)V
    .locals 9

    .prologue
    .line 270
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 280
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->g:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$user(Lpl/jbzd/app/model/User;)V
    .locals 9

    .prologue
    .line 323
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    if-eqz p1, :cond_a

    invoke-static {p1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 331
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/l;

    invoke-virtual {v0, p1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    move-object v6, v0

    .line 333
    :goto_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 334
    if-nez v6, :cond_2

    .line 336
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v0, v0, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-interface {v4, v0, v1}, Lio/realm/internal/n;->nullifyLink(J)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-static {v6}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v6

    .line 342
    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_4
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v0, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    check-cast v6, Lio/realm/internal/l;

    invoke-interface {v6}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->b(JJJZ)V

    goto :goto_0

    .line 349
    :cond_5
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 350
    if-nez p1, :cond_6

    .line 351
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->nullifyLink(J)V

    goto/16 :goto_0

    .line 354
    :cond_6
    invoke-static {p1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 355
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, p1

    .line 357
    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_9
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->i:J

    check-cast p1, Lio/realm/internal/l;

    invoke-interface {p1}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLink(JJ)V

    goto/16 :goto_0

    :cond_a
    move-object v6, p1

    goto/16 :goto_1
.end method

.method public realmSet$voted(I)V
    .locals 9

    .prologue
    .line 370
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v2, Lio/realm/CommentRealmProxy$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 380
    iget-object v0, p0, Lio/realm/CommentRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/CommentRealmProxy;->a:Lio/realm/CommentRealmProxy$a;

    iget-wide v2, v1, Lio/realm/CommentRealmProxy$a;->j:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method
