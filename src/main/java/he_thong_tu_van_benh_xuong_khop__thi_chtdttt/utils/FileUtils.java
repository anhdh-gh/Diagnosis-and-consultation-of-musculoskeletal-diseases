package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.utils;

import java.io.*;

public class FileUtils {

    private FileUtils() {}

    public static boolean writeObject(Object object, String path) {
        try {
            ObjectOutputStream oos = null;
            try {
                oos = new ObjectOutputStream(new FileOutputStream(path));
                oos.writeObject(object);
                oos.flush();
            } catch (IOException ex) {
                ex.printStackTrace();
            } finally {
                oos.close();
            }
        } catch (IOException e) {}
        return false;
    }

    public static Object readObject(String path) {
        try {
            ObjectInputStream ois = null;
            try {
                ois = new ObjectInputStream(new FileInputStream(path));
                return ois.readObject();
            } catch (IOException | ClassNotFoundException ex) {
                ex.printStackTrace();
            } finally {
                ois.close();
            }
        } catch (IOException e) {}
        return null;
    }
}
