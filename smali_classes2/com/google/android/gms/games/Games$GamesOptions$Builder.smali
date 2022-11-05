.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field zzaXY:Z

.field zzaXZ:Z

.field zzaYa:I

.field zzaYb:Z

.field zzaYc:I

.field zzaYd:Ljava/lang/String;

.field zzaYe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzaYf:Z

.field zzaYg:Z

.field zzaYh:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaXY:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaXZ:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYa:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYb:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYc:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYd:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYe:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYh:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 12

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaXZ:Z

    iget v3, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYa:I

    iget v5, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYc:I

    iget-object v7, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYe:Ljava/util/ArrayList;

    move v4, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move-object v11, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method

.method public setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYc:I

    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaXZ:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYa:I

    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaXZ:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYa:I

    return-object p0
.end method
