.class public final Lcom/google/android/gms/games/internal/GamesLog;
.super Ljava/lang/Object;


# static fields
.field private static final zzbbh:Lcom/google/android/gms/common/internal/zzq;

.field private static final zzbbi:Lcom/google/android/gms/internal/zzaca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaca",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbh:Lcom/google/android/gms/common/internal/zzq;

    const-string v0, "games.play_games_dogfood"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaca;->zzj(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzaca;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbi:Lcom/google/android/gms/internal/zzaca;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbh:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzq;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbh:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzq;->zzG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbh:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzq;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->zzbbh:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzq;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
