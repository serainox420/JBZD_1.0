.class public Lio/realm/UserRealmProxy;
.super Lpl/jbzd/app/model/User;
.source "UserRealmProxy.java"

# interfaces
.implements Lio/realm/internal/l;
.implements Lio/realm/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/UserRealmProxy$a;
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
.field private a:Lio/realm/UserRealmProxy$a;

.field private b:Lio/realm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/k",
            "<",
            "Lpl/jbzd/app/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v1, "username"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v1, "avatar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v1, "media_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, "media_main_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, "comments_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "comments_marked_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "followers"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "following"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "is_following"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "account_since"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/UserRealmProxy;->c:Ljava/util/List;

    .line 118
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lpl/jbzd/app/model/User;-><init>()V

    .line 121
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 122
    return-void
.end method

.method public static a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 379
    const-string v0, "User"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const-string v0, "User"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 381
    new-instance v0, Lio/realm/Property;

    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 382
    new-instance v4, Lio/realm/Property;

    const-string v5, "username"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 383
    new-instance v4, Lio/realm/Property;

    const-string v5, "avatar"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 384
    new-instance v4, Lio/realm/Property;

    const-string v5, "media_count"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 385
    new-instance v4, Lio/realm/Property;

    const-string v5, "media_main_count"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 386
    new-instance v4, Lio/realm/Property;

    const-string v5, "comments_count"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 387
    new-instance v4, Lio/realm/Property;

    const-string v5, "comments_marked_count"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 388
    new-instance v4, Lio/realm/Property;

    const-string v5, "followers"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 389
    new-instance v4, Lio/realm/Property;

    const-string v5, "following"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 390
    new-instance v4, Lio/realm/Property;

    const-string v5, "is_following"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 391
    new-instance v4, Lio/realm/Property;

    const-string v5, "account_since"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "User"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/SharedRealm;Z)Lio/realm/UserRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0xb

    .line 419
    const-string v0, "class_User"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 420
    const-string v0, "class_User"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Lio/realm/internal/Table;->b()J

    move-result-wide v4

    .line 422
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 423
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 424
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

    .line 426
    :cond_0
    if-eqz p1, :cond_2

    .line 427
    const-string v0, "Field count is more than expected - expected 11 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 433
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 434
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 429
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

    .line 437
    :cond_3
    new-instance v0, Lio/realm/UserRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/UserRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 439
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/UserRealmProxy$a;->a:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 443
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

    .line 447
    :cond_5
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 448
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_6
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 451
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_7
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_8
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 457
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_9
    const-string v1, "username"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 460
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'username\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_a
    const-string v1, "username"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 463
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'username\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_b
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 466
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'username\' is required. Either set @Required to field \'username\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_c
    const-string v1, "avatar"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 469
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'avatar\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_d
    const-string v1, "avatar"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 472
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'avatar\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_e
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 475
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'avatar\' is required. Either set @Required to field \'avatar\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_f
    const-string v1, "media_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 478
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'media_count\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_10
    const-string v1, "media_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 481
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'media_count\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_11
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 484
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'media_count\' does support null values in the existing Realm file. Use corresponding boxed type for field \'media_count\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_12
    const-string v1, "media_main_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 487
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'media_main_count\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_13
    const-string v1, "media_main_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 490
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'media_main_count\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_14
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 493
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'media_main_count\' does support null values in the existing Realm file. Use corresponding boxed type for field \'media_main_count\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_15
    const-string v1, "comments_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 496
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'comments_count\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_16
    const-string v1, "comments_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 499
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'comments_count\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_17
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 502
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'comments_count\' does support null values in the existing Realm file. Use corresponding boxed type for field \'comments_count\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_18
    const-string v1, "comments_marked_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 505
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'comments_marked_count\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_19
    const-string v1, "comments_marked_count"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 508
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'comments_marked_count\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1a
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 511
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'comments_marked_count\' does support null values in the existing Realm file. Use corresponding boxed type for field \'comments_marked_count\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1b
    const-string v1, "followers"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 514
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'followers\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1c
    const-string v1, "followers"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 517
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'followers\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1d
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 520
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'followers\' does support null values in the existing Realm file. Use corresponding boxed type for field \'followers\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1e
    const-string v1, "following"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 523
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'following\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1f
    const-string v1, "following"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 526
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'following\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_20
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 529
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'following\' does support null values in the existing Realm file. Use corresponding boxed type for field \'following\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_21
    const-string v1, "is_following"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 532
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'is_following\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_22
    const-string v1, "is_following"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 535
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'is_following\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_23
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 538
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'is_following\' does support null values in the existing Realm file. Use corresponding boxed type for field \'is_following\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_24
    const-string v1, "account_since"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 541
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'account_since\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_25
    const-string v1, "account_since"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_26

    .line 544
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'account_since\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_26
    iget-wide v4, v0, Lio/realm/UserRealmProxy$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_28

    .line 547
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'account_since\' is required. Either set @Required to field \'account_since\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_27
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'User\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_28
    return-object v0
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    const-string v0, "class_User"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const-string v0, "class_User"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 400
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 401
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "username"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 402
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "avatar"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 403
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "media_count"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 404
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "media_main_count"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 405
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "comments_count"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 406
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "comments_marked_count"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 407
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "followers"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 408
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "following"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 409
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "is_following"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 410
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "account_since"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 411
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 412
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_User"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/realm/l;Lpl/jbzd/app/model/User;Lpl/jbzd/app/model/User;Ljava/util/Map;)Lpl/jbzd/app/model/User;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/User;",
            "Lpl/jbzd/app/model/User;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/User;"
        }
    .end annotation

    .prologue
    .line 1046
    move-object v0, p1

    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$username()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$username(Ljava/lang/String;)V

    move-object v0, p1

    .line 1047
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$avatar()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$avatar(Ljava/lang/String;)V

    move-object v0, p1

    .line 1048
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$media_count()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$media_count(I)V

    move-object v0, p1

    .line 1049
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$media_main_count()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$media_main_count(I)V

    move-object v0, p1

    .line 1050
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$comments_count()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$comments_count(I)V

    move-object v0, p1

    .line 1051
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$comments_marked_count()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$comments_marked_count(I)V

    move-object v0, p1

    .line 1052
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$followers()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$followers(I)V

    move-object v0, p1

    .line 1053
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$following()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$following(I)V

    move-object v0, p1

    .line 1054
    check-cast v0, Lio/realm/x;

    move-object v1, p2

    check-cast v1, Lio/realm/x;

    invoke-interface {v1}, Lio/realm/x;->realmGet$is_following()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$is_following(Z)V

    move-object v0, p1

    .line 1055
    check-cast v0, Lio/realm/x;

    check-cast p2, Lio/realm/x;

    invoke-interface {p2}, Lio/realm/x;->realmGet$account_since()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/x;->realmSet$account_since(Ljava/lang/String;)V

    .line 1056
    return-object p1
.end method

.method public static a(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/User;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/User;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 769
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

    .line 770
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
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

    .line 802
    :goto_0
    return-object p1

    .line 775
    :cond_1
    sget-object v2, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v2}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/b$b;

    .line 776
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/l;

    .line 777
    if-eqz v3, :cond_2

    .line 778
    check-cast v3, Lpl/jbzd/app/model/User;

    move-object p1, v3

    goto :goto_0

    .line 780
    :cond_2
    const/4 v5, 0x0

    .line 782
    if-eqz p2, :cond_5

    .line 783
    const-class v3, Lpl/jbzd/app/model/User;

    invoke-virtual {p0, v3}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 784
    invoke-virtual {v6}, Lio/realm/internal/Table;->c()J

    move-result-wide v8

    move-object v3, p1

    .line 785
    check-cast v3, Lio/realm/x;

    invoke-interface {v3}, Lio/realm/x;->realmGet$id()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v6, v8, v9, v10, v11}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v8

    .line 786
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 788
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/l;->f:Lio/realm/RealmSchema;

    const-class v5, Lpl/jbzd/app/model/User;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 789
    new-instance v4, Lio/realm/UserRealmProxy;

    invoke-direct {v4}, Lio/realm/UserRealmProxy;-><init>()V

    .line 790
    move-object v0, v4

    check-cast v0, Lio/realm/internal/l;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    move v2, p2

    .line 799
    :goto_1
    if-eqz v2, :cond_4

    .line 800
    invoke-static {p0, v4, p1, p3}, Lio/realm/UserRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/User;Lpl/jbzd/app/model/User;Ljava/util/Map;)Lpl/jbzd/app/model/User;

    move-result-object p1

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 795
    goto :goto_1

    .line 802
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/UserRealmProxy;->b(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;

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
    .line 556
    const-string v0, "class_User"

    return-object v0
.end method

.method public static b(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/User;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/User;"
        }
    .end annotation

    .prologue
    .line 808
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 809
    if-eqz v0, :cond_0

    .line 810
    check-cast v0, Lpl/jbzd/app/model/User;

    .line 825
    :goto_0
    return-object v0

    .line 813
    :cond_0
    const-class v1, Lpl/jbzd/app/model/User;

    move-object v0, p1

    check-cast v0, Lio/realm/x;

    invoke-interface {v0}, Lio/realm/x;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/l;->a(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    move-object v1, v0

    .line 814
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 815
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$username()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$username(Ljava/lang/String;)V

    move-object v1, v0

    .line 816
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$avatar()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$avatar(Ljava/lang/String;)V

    move-object v1, v0

    .line 817
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$media_count()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$media_count(I)V

    move-object v1, v0

    .line 818
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$media_main_count()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$media_main_count(I)V

    move-object v1, v0

    .line 819
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$comments_count()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$comments_count(I)V

    move-object v1, v0

    .line 820
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$comments_marked_count()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$comments_marked_count(I)V

    move-object v1, v0

    .line 821
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$followers()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$followers(I)V

    move-object v1, v0

    .line 822
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$following()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$following(I)V

    move-object v1, v0

    .line 823
    check-cast v1, Lio/realm/x;

    move-object v2, p1

    check-cast v2, Lio/realm/x;

    invoke-interface {v2}, Lio/realm/x;->realmGet$is_following()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$is_following(Z)V

    move-object v1, v0

    .line 824
    check-cast v1, Lio/realm/x;

    check-cast p1, Lio/realm/x;

    invoke-interface {p1}, Lio/realm/x;->realmGet$account_since()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/x;->realmSet$account_since(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v0}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/b$b;

    .line 130
    invoke-virtual {v0}, Lio/realm/b$b;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/UserRealmProxy$a;

    iput-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    .line 131
    new-instance v1, Lio/realm/k;

    invoke-direct {v1, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    .line 132
    iget-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 133
    iget-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 134
    iget-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Z)V

    .line 135
    iget-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1079
    if-ne p0, p1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return v0

    .line 1080
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

    .line 1081
    :cond_3
    check-cast p1, Lio/realm/UserRealmProxy;

    .line 1083
    iget-object v2, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 1084
    iget-object v3, p1, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 1085
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1087
    :cond_6
    iget-object v2, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1088
    iget-object v3, p1, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 1089
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1091
    :cond_9
    iget-object v2, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

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

    .line 1066
    iget-object v1, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1067
    iget-object v2, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 1068
    iget-object v3, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 1071
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1072
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1073
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1074
    return v0

    :cond_1
    move v1, v0

    .line 1071
    goto :goto_0
.end method

.method public realmGet$account_since()Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 353
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$avatar()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 185
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$comments_count()I
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 253
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$comments_marked_count()I
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 273
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$followers()I
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 293
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$following()I
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 313
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$id()I
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 141
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$is_following()Z
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 333
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$media_count()I
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 213
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$media_main_count()I
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 233
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$username()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 157
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$account_since(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 357
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 362
    if-nez p1, :cond_1

    .line 363
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v0, Lio/realm/UserRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v1, v1, Lio/realm/UserRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 371
    if-nez p1, :cond_3

    .line 372
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$avatar(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 189
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 194
    if-nez p1, :cond_1

    .line 195
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v0, Lio/realm/UserRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v1, v1, Lio/realm/UserRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 203
    if-nez p1, :cond_3

    .line 204
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$comments_count(I)V
    .locals 9

    .prologue
    .line 257
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 267
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->f:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$comments_marked_count(I)V
    .locals 9

    .prologue
    .line 277
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 287
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->g:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$followers(I)V
    .locals 9

    .prologue
    .line 297
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 307
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$following(I)V
    .locals 9

    .prologue
    .line 317
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->i:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 327
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->i:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$id(I)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 151
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$is_following(Z)V
    .locals 8

    .prologue
    .line 337
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJZZ)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 347
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$media_count(I)V
    .locals 9

    .prologue
    .line 217
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->d:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 227
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->d:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$media_main_count(I)V
    .locals 9

    .prologue
    .line 237
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v2, Lio/realm/UserRealmProxy$a;->e:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 247
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->e:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$username(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 161
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 166
    if-nez p1, :cond_1

    .line 167
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v0, Lio/realm/UserRealmProxy$a;->b:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v1, v1, Lio/realm/UserRealmProxy$a;->b:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 175
    if-nez p1, :cond_3

    .line 176
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lio/realm/UserRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/UserRealmProxy;->a:Lio/realm/UserRealmProxy$a;

    iget-wide v2, v1, Lio/realm/UserRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method
