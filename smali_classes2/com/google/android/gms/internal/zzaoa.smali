.class public Lcom/google/android/gms/internal/zzaoa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaoa$zza;
    }
.end annotation


# static fields
.field public static final zzaUw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaUz:Lcom/google/android/gms/internal/zzaoa;


# instance fields
.field private final zzaUx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoa$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaUy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoa$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "altitude"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "food_item"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "meal_type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "repetitions"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "resistance"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "resistance_type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "debug_session"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "google.android.fitness.SessionV2"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaoa;->zzaUw:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzaoa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaoa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaoa;->zzaUz:Lcom/google/android/gms/internal/zzaoa;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    const-wide v12, 0x408f400000000000L    # 1000.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v7, "latitude"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "longitude"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "accuracy"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x40c3880000000000L    # 10000.0

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "bpm"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "altitude"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v2, -0x3f07960000000000L    # -100000.0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "percentage"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "confidence"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "duration"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "height"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "weight"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "speed"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x40c57c0000000000L    # 11000.0

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzaUy:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v7, "com.google.step_count.delta"

    const-string v8, "steps"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzaoa;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.google.calories.consumed"

    const-string v8, "calories"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzaoa;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.google.calories.expended"

    const-string v8, "calories"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x3e0316b7e5807ca5L    # 5.555555555555555E-10

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzaoa;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.google.distance.delta"

    const-string v8, "distance"

    new-instance v1, Lcom/google/android/gms/internal/zzaoa$zza;

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DDLcom/google/android/gms/internal/zzaoa$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzaoa;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzaUx:Ljava/util/Map;

    return-void
.end method

.method public static zzCI()Lcom/google/android/gms/internal/zzaoa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaoa;->zzaUz:Lcom/google/android/gms/internal/zzaoa;

    return-object v0
.end method

.method private static zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method zzK(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoa$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzaUx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoa$zza;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzej(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoa$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzaUy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoa$zza;

    return-object v0
.end method
