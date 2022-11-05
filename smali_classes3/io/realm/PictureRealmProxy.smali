.class public Lio/realm/PictureRealmProxy;
.super Lpl/jbzd/app/model/Picture;
.source "PictureRealmProxy.java"

# interfaces
.implements Lio/realm/internal/l;
.implements Lio/realm/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/PictureRealmProxy$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
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
.field private a:Lio/realm/PictureRealmProxy$a;

.field private b:Lio/realm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/k",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "mp4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "added"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v1, "share_image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v1, "youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/PictureRealmProxy;->c:Ljava/util/List;

    .line 108
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lpl/jbzd/app/model/Picture;-><init>()V

    .line 111
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 112
    return-void
.end method

.method public static a(Lio/realm/internal/SharedRealm;Z)Lio/realm/PictureRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x9

    .line 392
    const-string v0, "class_Picture"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 393
    const-string v0, "class_Picture"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lio/realm/internal/Table;->b()J

    move-result-wide v4

    .line 395
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 396
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 397
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is less than expected - expected 9 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    if-eqz p1, :cond_2

    .line 400
    const-string v0, "Field count is more than expected - expected 9 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 406
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 407
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 402
    :cond_2
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is more than expected - expected 9 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_3
    new-instance v0, Lio/realm/PictureRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/PictureRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 412
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 413
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/PictureRealmProxy$a;->a:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 416
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

    .line 420
    :cond_5
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 421
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_6
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 424
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_7
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_8
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 430
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_9
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 433
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_a
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 436
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_b
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 439
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'image\' is required. Either set @Required to field \'image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_c
    const-string v1, "mp4"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 442
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mp4\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_d
    const-string v1, "mp4"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 445
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mp4\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_e
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 448
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mp4\' is required. Either set @Required to field \'mp4\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_f
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 451
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'width\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_10
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 454
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'width\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_11
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 457
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'width\' does support null values in the existing Realm file. Use corresponding boxed type for field \'width\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_12
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 460
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'height\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_13
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 463
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'height\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_14
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 466
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'height\' does support null values in the existing Realm file. Use corresponding boxed type for field \'height\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_15
    const-string v1, "added"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 469
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'added\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_16
    const-string v1, "added"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 472
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'added\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_17
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_18

    .line 475
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'added\' is required. Either set @Required to field \'added\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_18
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 478
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'type\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_19
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 481
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'type\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1a
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 484
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'type\' is required. Either set @Required to field \'type\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1b
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 487
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'share_image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_1c
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 490
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'share_image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1d
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 493
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'share_image\' is required. Either set @Required to field \'share_image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1e
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 496
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'youtube\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_1f
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_20

    .line 499
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'youtube\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_20
    iget-wide v4, v0, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_22

    .line 502
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'youtube\' is required. Either set @Required to field \'youtube\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_21
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Picture\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_22
    return-object v0
.end method

.method public static a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 356
    const-string v0, "Picture"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "Picture"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 358
    new-instance v0, Lio/realm/Property;

    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 359
    new-instance v4, Lio/realm/Property;

    const-string v5, "image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 360
    new-instance v4, Lio/realm/Property;

    const-string v5, "mp4"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 361
    new-instance v4, Lio/realm/Property;

    const-string v5, "width"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 362
    new-instance v4, Lio/realm/Property;

    const-string v5, "height"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 363
    new-instance v4, Lio/realm/Property;

    const-string v5, "added"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 364
    new-instance v4, Lio/realm/Property;

    const-string v5, "type"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 365
    new-instance v4, Lio/realm/Property;

    const-string v5, "share_image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 366
    new-instance v4, Lio/realm/Property;

    const-string v5, "youtube"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Picture"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 373
    const-string v0, "class_Picture"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string v0, "class_Picture"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 375
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 376
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 377
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mp4"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 378
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "width"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 379
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 380
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "added"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 381
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 382
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "share_image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 383
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "youtube"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 384
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 385
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_Picture"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/realm/l;Lpl/jbzd/app/model/Picture;Lpl/jbzd/app/model/Picture;Ljava/util/Map;)Lpl/jbzd/app/model/Picture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Picture;",
            "Lpl/jbzd/app/model/Picture;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Picture;"
        }
    .end annotation

    .prologue
    .line 1019
    move-object v0, p1

    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$image(Ljava/lang/String;)V

    move-object v0, p1

    .line 1020
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$mp4()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$mp4(Ljava/lang/String;)V

    move-object v0, p1

    .line 1021
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$width()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$width(I)V

    move-object v0, p1

    .line 1022
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$height()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$height(I)V

    move-object v0, p1

    .line 1023
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$added()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$added(Ljava/util/Date;)V

    move-object v0, p1

    .line 1024
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$type(Ljava/lang/String;)V

    move-object v0, p1

    .line 1025
    check-cast v0, Lio/realm/j;

    move-object v1, p2

    check-cast v1, Lio/realm/j;

    invoke-interface {v1}, Lio/realm/j;->realmGet$share_image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$share_image(Ljava/lang/String;)V

    move-object v0, p1

    .line 1026
    check-cast v0, Lio/realm/j;

    check-cast p2, Lio/realm/j;

    invoke-interface {p2}, Lio/realm/j;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/j;->realmSet$youtube(Ljava/lang/String;)V

    .line 1027
    return-object p1
.end method

.method public static a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Picture;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Picture;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 706
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

    .line 707
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
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

    .line 739
    :goto_0
    return-object p1

    .line 712
    :cond_1
    sget-object v2, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v2}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/b$b;

    .line 713
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/l;

    .line 714
    if-eqz v3, :cond_2

    .line 715
    check-cast v3, Lpl/jbzd/app/model/Picture;

    move-object p1, v3

    goto :goto_0

    .line 717
    :cond_2
    const/4 v5, 0x0

    .line 719
    if-eqz p2, :cond_5

    .line 720
    const-class v3, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p0, v3}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 721
    invoke-virtual {v6}, Lio/realm/internal/Table;->c()J

    move-result-wide v8

    move-object v3, p1

    .line 722
    check-cast v3, Lio/realm/j;

    invoke-interface {v3}, Lio/realm/j;->realmGet$id()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v6, v8, v9, v10, v11}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v8

    .line 723
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 725
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/l;->f:Lio/realm/RealmSchema;

    const-class v5, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 726
    new-instance v4, Lio/realm/PictureRealmProxy;

    invoke-direct {v4}, Lio/realm/PictureRealmProxy;-><init>()V

    .line 727
    move-object v0, v4

    check-cast v0, Lio/realm/internal/l;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    move v2, p2

    .line 736
    :goto_1
    if-eqz v2, :cond_4

    .line 737
    invoke-static {p0, v4, p1, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;Lpl/jbzd/app/model/Picture;Ljava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object p1

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 732
    goto :goto_1

    .line 739
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/PictureRealmProxy;->b(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

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
    .line 511
    const-string v0, "class_Picture"

    return-object v0
.end method

.method public static b(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Picture;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Picture;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 746
    if-eqz v0, :cond_0

    .line 747
    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 760
    :goto_0
    return-object v0

    .line 750
    :cond_0
    const-class v1, Lpl/jbzd/app/model/Picture;

    move-object v0, p1

    check-cast v0, Lio/realm/j;

    invoke-interface {v0}, Lio/realm/j;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/l;->a(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    move-object v1, v0

    .line 751
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 752
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$image(Ljava/lang/String;)V

    move-object v1, v0

    .line 753
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$mp4()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$mp4(Ljava/lang/String;)V

    move-object v1, v0

    .line 754
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$width()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$width(I)V

    move-object v1, v0

    .line 755
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$height()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$height(I)V

    move-object v1, v0

    .line 756
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$added()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$added(Ljava/util/Date;)V

    move-object v1, v0

    .line 757
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$type(Ljava/lang/String;)V

    move-object v1, v0

    .line 758
    check-cast v1, Lio/realm/j;

    move-object v2, p1

    check-cast v2, Lio/realm/j;

    invoke-interface {v2}, Lio/realm/j;->realmGet$share_image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$share_image(Ljava/lang/String;)V

    move-object v1, v0

    .line 759
    check-cast v1, Lio/realm/j;

    check-cast p1, Lio/realm/j;

    invoke-interface {p1}, Lio/realm/j;->realmGet$youtube()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/j;->realmSet$youtube(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v0}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/b$b;

    .line 120
    invoke-virtual {v0}, Lio/realm/b$b;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/PictureRealmProxy$a;

    iput-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    .line 121
    new-instance v1, Lio/realm/k;

    invoke-direct {v1, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    .line 122
    iget-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 123
    iget-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 124
    iget-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Z)V

    .line 125
    iget-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1050
    if-ne p0, p1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return v0

    .line 1051
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

    .line 1052
    :cond_3
    check-cast p1, Lio/realm/PictureRealmProxy;

    .line 1054
    iget-object v2, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 1055
    iget-object v3, p1, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 1056
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1058
    :cond_6
    iget-object v2, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1059
    iget-object v3, p1, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 1060
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1062
    :cond_9
    iget-object v2, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

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

    .line 1037
    iget-object v1, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1038
    iget-object v2, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1039
    iget-object v3, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 1042
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1043
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1044
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1045
    return v0

    :cond_1
    move v1, v0

    .line 1042
    goto :goto_0
.end method

.method public realmGet$added()Ljava/util/Date;
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 243
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$height()I
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 223
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$id()I
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 131
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 147
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mp4()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 175
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 302
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 274
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$width()I
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 203
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 330
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$added(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 250
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 255
    if-nez p1, :cond_1

    .line 256
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 264
    if-nez p1, :cond_3

    .line 265
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$height(I)V
    .locals 9

    .prologue
    .line 227
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v2, Lio/realm/PictureRealmProxy$a;->e:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 237
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->e:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$id(I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 141
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 151
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 156
    if-nez p1, :cond_1

    .line 157
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 165
    if-nez p1, :cond_3

    .line 166
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mp4(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 179
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 184
    if-nez p1, :cond_1

    .line 185
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 193
    if-nez p1, :cond_3

    .line 194
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 306
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 311
    if-nez p1, :cond_1

    .line 312
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 320
    if-nez p1, :cond_3

    .line 321
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 278
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 283
    if-nez p1, :cond_1

    .line 284
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 292
    if-nez p1, :cond_3

    .line 293
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$width(I)V
    .locals 9

    .prologue
    .line 207
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v2, Lio/realm/PictureRealmProxy$a;->d:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 217
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->d:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 334
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 339
    if-nez p1, :cond_1

    .line 340
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v0, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v1, v1, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 348
    if-nez p1, :cond_3

    .line 349
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lio/realm/PictureRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PictureRealmProxy;->a:Lio/realm/PictureRealmProxy$a;

    iget-wide v2, v1, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method
